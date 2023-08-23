;;; dynexp.el --- Snippets via abbrev-mode  -*- lexical-binding: t; -*-

;; Copyright (C) 2023  Paul D. Nelson

;; Author: Paul D. Nelson <nelson.paul.david@gmail.com>
;; Version: 0.0
;; URL: https://github.com/ultronozm/dynexp.el
;; Package-Requires: ((emacs "26.1") (auctex "11.86.1"))
;; Keywords: convenience

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; This package provides completion features similar in spirit to what
;; is offered by the popular packages `CDLaTeX' and `YASnippet' and
;; the built-in `Skeleton' language.  See the README for details.

;;; Code:

(require 'subr-x)
(require 'cl-lib)
(require 'tex)
(require 'latex)
(require 'tex-fold)

(defgroup dynexp nil
  "Settings for dynamic expressions module."
  :group 'czm)

(defcustom dynexp-macros-to-fold
  '("emph" "textbf" "textit" "alert")
  "LaTeX macros to fold automatically when inserted as templates."
  :type '(repeat string)
  :group 'dynexp)

;;;###autoload
(cl-defun dynexp-fold ()
  "Expand and then fold.
Example:
    (\"bthm\" \"<+START+><+TAB+>\\begin{theorem}
<+TAB+><+++>
<+TAB+>\\end{theorem}<++><+END+>\" dynexp-fold)"
  (dynexp--core :fold t))

;; (cl-defun dynexp-fold-and-mmm-parse ()
;;   (dynexp--core :fold t)
;;   (mmm-parse-buffer)
;;   )

(defun dynexp-delete-leading-space ()
  "Delete leading space.
Example:
    (\"cu\" \"^3\" dynexp-delete-leading-space)"
  (save-excursion
    (goto-char last-abbrev-location)
    (while (looking-back "[[:space:]]+" (line-beginning-position))
      (replace-match ""))))

(defun dynexp-delete-leading-space-dynexp ()
  "Delete leading space, then expand.
Example:
    (\"hu\" \"<+START+>^{<+++>}<++><+END+>\" dynexp-delete-leading-space-dynexp)"
  (save-excursion
    (goto-char last-abbrev-location)
    (while (looking-back "[[:space:]]+" (line-beginning-position))
      (replace-match "")))
  (dynexp--core))

;;;###autoload
(defun dynexp ()
  "Expand."
  (dynexp--core))

(cl-defun dynexp--core (&key fold)
  "Core function for dynamic expansion.
If FOLD is non-nil, then fold the macro after inserting it."
  (interactive)
  (let (bound
	start end
	_fold-pos)
    (search-backward "<+END+>")
    (replace-match "")
    (setq bound (point))
    ;; set end to new marker at point
    (setq end (point-marker))
    (search-backward "<+START+>")
    (replace-match "")
    (setq start (point))
    (save-excursion
      (while (search-forward "<+TAB+>" bound t)
	(progn
	  (replace-match "")
	  (when (and (looking-at-p "\\\\begin")
		     (not (looking-back "^[[:space:]]*" (line-beginning-position))))
	    (newline-and-indent))
	  ;; (indent-for-tab-command)
	  )))
    ;; (when fold
    ;;   (setq fold-pos (point)))
    (search-forward "<+++>")
    (replace-match "")
    (forward-char)
    (backward-char)
    (when (and TeX-fold-mode
	       (looking-back "\\\\item " (line-beginning-position)))
      (save-excursion
	(goto-char (match-beginning 0))
	(TeX-fold-macro)))
    ;; (when fold-pos
    ;;   (save-excursion
    ;; 	(goto-char fold-pos)
    ;; 	(TeX-fold-macro))
    ;;   (backward-char))

    ;; convert end back to a point from a marker
    (setq end (marker-position end))
    (when fold
      (TeX-fold-region start (point))
      (TeX-fold-region (point) end))

    (insert "%!!!")
    ;; (replace-match "%!!!")
    ))

;;;###autoload
(defun dynexp-next ()
  "Expand abbrev, remove <++> placeholders, fold LaTeX macros."
  (interactive)
  ;; Expand abbreviation
  (expand-abbrev)
  
  ;; Check if in a LaTeX section environment
  (let ((start (point))
        (start-in-latex-section-env (dynexp--in-latex-section-env-p))
	(start-texmathp (texmathp)))
    ;; Remove <++> placeholder if present
    (when (search-forward "<++>" nil t)
      (replace-match ""))
    (let ((end-in-latex-section-env (dynexp--in-latex-section-env-p)))
      ;; Fold LaTeX macro or section
      (cond
       ((and start-texmathp
	     (not (texmathp))
	     (equal (car texmathp-why) "$"))
	(let ((beg (cdr texmathp-why))
	      (end
	       (save-excursion
		 (goto-char (cdr texmathp-why))
		 (forward-char 1)
		 (search-forward "$"))))
	  (replace-region-contents
	   (1+ beg)
	   (1- end)
	   (lambda (s)
	     (with-temp-buffer
	       (insert s)
	       (goto-char (point-min))
	       (while (re-search-forward "\\s-*_\\s-*" end t)
		 (replace-match "_" t t))
	       (buffer-substring-no-properties (point-min) (point-max)))))))
       ((and start-in-latex-section-env (not end-in-latex-section-env))
	(save-excursion
          (goto-char start)
          (TeX-fold-macro)))
       ((dynexp--looking-back-macro-to-fold-p)
	(let ((end (point-marker))
	      (beginnings (dynexp-split-macro (match-beginning 0))))
	  (dolist (b beginnings)
	    (goto-char b)
	    (TeX-fold-macro))
	  (goto-char end)))))))

(defun dynexp-split-macro (beg)
  "Split macro at point and fold the first part.
TODO: relevance of BEG?"
  (when-let
      ((type (save-excursion
	       (goto-char beg)
	       (and
		(looking-at "\\\\\\([^{]+\\)")
		(match-string 1)))))
    (let ((beginnings (list beg))
	  (end (save-excursion
		 (goto-char beg)
		 (forward-sexp 2)
		 (point))))
      (save-excursion
	(goto-char beg)
	(while (re-search-forward "[[:space:]]*\\$[^$]*\\$[[:space:]]*" end t)
	  (let ((old-segment-end (match-beginning 0))
		(old-segment-conclusion "}")
		(new-segment-begin (match-end 0))
		(new-segment-introduction (format "\\%s{" type)))
	    (goto-char new-segment-begin)
	    (insert new-segment-introduction)
	    (goto-char old-segment-end)
	    (insert old-segment-conclusion)
	    (setq beg (+ new-segment-begin (length old-segment-conclusion)))
	    (setq end (+ end (length new-segment-introduction) (length old-segment-conclusion)))
	    (goto-char beg)
	    (setq beginnings (append beginnings (list beg))))))
      (let ((offset 0))
	(dotimes (i (length beginnings))
	  (setf (nth i beginnings) (- (nth i beginnings) offset))
	  (let ((b (nth i beginnings)))
	    (goto-char b)
	    (let ((e (save-excursion
		       (forward-sexp 2)
		       (point))))
	      (when (and (looking-at
			  (concat
			   "\\\\"
			   type
			   "{\\([[:space:]]*\\)}"))
			 (= (match-end 0) e))
		(let ((old-length (length (match-string 0)))
		      (new-length (length (match-string 1))))
		  (replace-match (match-string 1))
		  (setq offset (+ offset
				  (- old-length new-length)))))))))
      beginnings)))

(defun dynexp--in-latex-section-env-p ()
  "Check if the point is in a LaTeX section environment."
  (save-excursion
    (let ((pos (point)))
      (beginning-of-line)
      (string-match
       (concat
        "^\\\\"
        (regexp-opt
         (mapcar (lambda (x) (car x))
                 LaTeX-section-list))
        "{[^}]*$")
       (buffer-substring-no-properties
	(point) pos)))))

;; (defun dynexp--looking-back-macro-to-fold-p ()
;;   "Check if the point is looking back at a macro that needs to be folded."
;;   (looking-back
;;    (concat
;;     "\\\\"
;;     (regexp-opt dynexp-macros-to-fold)
;;     "{[^}]+}")
;;    (line-beginning-position)))

(defun dynexp--looking-back-macro-to-fold-p ()
  "Look back for a macro that needs to be folded."
  (and
   (looking-back "}")
   (save-excursion
     (backward-sexp)
     (looking-back
      (concat
       "\\\\"
       (regexp-opt dynexp-macros-to-fold))
      (line-beginning-position)))))

;;;###autoload
(defun dynexp-space ()
  "Expand dynamic abbreviation.
If no space precedes the cursor and we can expand the
abbreviation, then do so.  Otherwise, simply insert a space.  If
the expansion ends with \"%!!!\", then delete that."
  (interactive)
      					; If there's no space behind
					; us, then expand, delete any
					; spurious "%!!!", and insert
					; a space.  Otherwise, simply
					; insert a space.
  (if (and
       abbrev-mode
       (not (looking-back " "))
       (expand-abbrev))
      (progn
					;				(indent-for-tab-command)
	(if (looking-back "%!!!")
	    (progn (search-backward "%!!!") (replace-match ""))
	  (insert " ")))
    (insert " ")))

;;;###autoload
(defun dynexp-modify-abbrev-table (table abbrevs)
  "Define abbreviations in TABLE given by ABBREVS."
  (unless table
    (error "Abbrev table does not exist" table))
  (dolist (abbrev abbrevs)
    (define-abbrev table (car abbrev) (cadr abbrev) (caddr abbrev))))


(provide 'dynexp)
;;; dynexp.el ends here
