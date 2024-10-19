;;; dynexp.el --- Snippets via abbrev-mode  -*- lexical-binding: t; -*-

;; Copyright (C) 2023  Paul D. Nelson

;; Author: Paul D. Nelson <nelson.paul.david@gmail.com>
;; Version: 0.0
;; URL: https://github.com/ultronozm/dynexp.el
;; Package-Requires: ((emacs "26.1") (mmm-mode "0.5.9") (auctex))
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
;; the built-in `Skeleton' and 'tempo' packages.  See the README for
;; details.

;;; Code:

(require 'subr-x)
(require 'tex)
(require 'latex)
(require 'tex-fold)

(defgroup dynexp nil
  "Settings for dynamic expressions module."
  :group 'czm)

(defcustom dynexp-macros-to-fold
  '("emph" "textbf" "textit" "alert" "underline")
  "LaTeX macros to fold automatically when inserted as templates."
  :type '(repeat string)
  :group 'dynexp)

(defconst dynexp-markup-start "<+++>"
  "Markup indicating the starting point for dynexp expansion.")

(defconst dynexp-markup-poi "<++>"
  "Markup indicating a point of interest in dynexp expansion.")

(defvar dynexp-at-begin-hook nil
  "Hook run after processing each tab marker in dynexp expansion.
The hook functions are called with no arguments, with point at the
beginning of the inserted expansion.")

(defvar dynexp-after-start-hook nil
  "Hook run after processing the start marker in dynexp expansion.
The hook functions are called with two arguments: START and END,
which are the start and end positions of the expanded region.")

(defvar dynexp-next-pre-expand-hook nil
  "Hook run before expansion in `dynexp-next`.")

(defvar dynexp-next-post-expand-hook nil
  "Hook run after expansion in `dynexp-next`.")

(defvar dynexp-space-hook nil
  "Hook run after expansion in `dynexp-space`.")

(defvar-local dynexp--last-expanded-abbrev nil
  "The last abbrev that was expanded using dynexp.")

;;;###autoload
(defun dynexp ()
  "Core function for dynamic expansion.
If FOLD is non-nil, then fold the macro after inserting it."
  (interactive)
  (let ((start last-abbrev-location)
        (end (point-marker)))

    (goto-char start)
    (run-hooks 'dynexp-at-begin-hook)
    (save-excursion
      (while (re-search-forward "[\n\r]" (marker-position end) t)
        (indent-for-tab-command)))

    (search-forward dynexp-markup-start)
    (replace-match "")
    (run-hook-with-args 'dynexp-after-start-hook start (marker-position end))

    (setq dynexp--last-expanded-abbrev last-abbrev)
    (set-marker end nil)))

;;;###autoload
(defun dynexp-next ()
  "Expand abbrev, remove <++> placeholders, fold LaTeX macros."
  (interactive)
  (run-hooks 'dynexp-next-pre-expand-hook)
  (expand-abbrev)
  (let ((start (point)))
    (when (search-forward dynexp-markup-poi nil t)
      (replace-match ""))
    (run-hook-with-args 'dynexp-next-post-expand-hook start)))

;;;###autoload
(defun dynexp-space ()
  "Either insert a space, or expand an abbrev.
Insert trailing spaces only after abbrevs not expanded using `dynexp'."
  (interactive)
  (if (and abbrev-mode
           (not (looking-back " " 1))
           (expand-abbrev))
      (progn
        (unless (eq last-abbrev dynexp--last-expanded-abbrev)
          (insert " "))
        (run-hooks 'dynexp-space-hook)
        (setq dynexp--last-expanded-abbrev nil))
    (insert " ")))

;;;###autoload
(defun dynexp-modify-abbrev-table (table abbrevs)
  "Define abbreviations in TABLE given by ABBREVS."
  (unless table
    (error "Abbrev table does not exist"))
  (dolist (abbrev abbrevs)
    (define-abbrev table (car abbrev) (cadr abbrev) (caddr abbrev))))

;;; Miscellaneous functions

(defun dynexp-cancel ()
  "Cancel expansion."
  (interactive)
  (delete-char (- last-abbrev-location (point)))
  (insert last-abbrev-text))

(defun dynexp-delete-leading-space ()
  "Delete leading space.
Example:
    (\"cu\" \"^3\" dynexp-delete-leading-space)"
  (if (texmathp)
      (save-excursion
        (goto-char last-abbrev-location)
        (while (looking-back "[[:space:]]+" (line-beginning-position))
          (replace-match "")))
    (dynexp-cancel)))

(defun dynexp-delete-leading-space-dynexp ()
  "Delete leading space, then expand.
Example:
    (\"hu\" \"^{<+++>}<++>\" dynexp-delete-leading-space-dynexp)"
  (if (texmathp)
      (progn
        (save-excursion
          (goto-char last-abbrev-location)
          (while (looking-back "[[:space:]]+" (line-beginning-position))
            (replace-match ""))
          (setq last-abbrev-location (point)))
        (dynexp))
    (dynexp-cancel)))

;;; Auto-expansion feature

(defcustom dynexp-auto-expand-list '()
  "List of abbrevs to auto-expand under `dynexp-auto-expand-mode'."
  :type '(repeat string))

(defun dynexp-auto--expand ()
  "Expand abbrevs from `dynexp-auto-expand-list' if point is at word end."
  (let* ((bounds (bounds-of-thing-at-point 'word))
         (word-end (cdr bounds))
         (word (and bounds (buffer-substring-no-properties (car bounds) word-end))))
    (when (and word
               (= (point) word-end)
               (member word dynexp-auto-expand-list))
      (dynexp-space))))

;;;###autoload
(define-minor-mode dynexp-auto-expand-mode
  "Minor mode to automatically expand certain abbrevs."
  :lighter " AutoExp"
  (if dynexp-auto-expand-mode
      (add-hook 'post-self-insert-hook #'dynexp-auto--expand nil t)
    (remove-hook 'post-self-insert-hook #'dynexp-auto--expand t)))

;;; TeX

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
            (setq end (+ end (length new-segment-introduction)
                         (length old-segment-conclusion)))
            (goto-char beg)
            (setq beginnings (append beginnings (list beg))))))
      (let ((offset 0))
        (dotimes (i (length beginnings))
          (setf (nth i beginnings)
                (- (nth i beginnings)
                   offset))
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
                         (= (match-end 0)
                            e))
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

(defun dynexp--looking-back-macro-to-fold-p ()
  "Look back for a macro that needs to be folded."
  (and
   (looking-back "}" 1)
   (save-excursion
     (backward-sexp)
     (looking-back
      (concat
       "\\\\"
       (regexp-opt dynexp-macros-to-fold))
      (line-beginning-position)))))

(defun dynexp--mmm-parse-LaTeX-environment ()
  "Call `mmm-parse-region' on the LaTeX environment at point."
  (let* ((beg (save-mark-and-excursion
                (LaTeX-find-matching-begin)
                (point)))
         (end (save-mark-and-excursion
                (LaTeX-find-matching-end)
                (line-beginning-position 2))))
    (when (fboundp 'mmm-parse-region)
      (mmm-parse-region beg end))))

(defun dynexp-latex-newline-before-begin ()
  "Insert a newline before \\begin if not at beginning of line."
  (when (and (looking-at-p "\\\\begin")
             (not (looking-back "^[[:space:]]*" (line-beginning-position))))
    (newline-and-indent)))

(defvar dynexp-latex-fold-after-expansion nil
  "When non-nil, fold the expanded region after expansion.")

(defun dynexp-latex-after-start (start end)
  "Perform LaTeX-specific operations after expansion start.
START and END are the start and end positions of the expanded region."
  (when TeX-fold-mode
    ;; Fold \item macro if at the beginning of expansion
    (when (looking-back "\\\\item " (line-beginning-position))
      (save-excursion
        (goto-char (match-beginning 0))
        (TeX-fold-macro)))

    ;; Fold the expanded region if dynexp-latex-fold-after-expansion is non-nil
    (when dynexp-latex-fold-after-expansion
      (TeX-fold-region start (point))
      (TeX-fold-region (point) end))))

(defun dynexp-latex-next-pre-expand ()
  "Pre-expansion function for LaTeX mode in `dynexp-next'."
  (when (and (texmathp)
             (member last-command '(self-insert-command dynexp-space))
             (let ((keys (recent-keys))
                   (len (length (recent-keys))))
               (and (>= len 2)
                    (equal ?\  (aref keys (- len 2)))
                    (looking-back " " 1))))
    (delete-char -1)))

(defun dynexp-latex-next-post-expand (start)
  "Post-expansion function for LaTeX mode in `dynexp-next'.
START is the position post-expansion."
  (let ((start-in-latex-section-env
         (save-excursion
           (goto-char start)
           (dynexp--in-latex-section-env-p)))
        (start-texmathp
         (save-excursion
           (goto-char start)
           (texmathp)))
        (start-texmathp-why texmathp-why)
        (end-in-latex-section-env
         (dynexp--in-latex-section-env-p)))
    (cond
     ((and start-texmathp
           (not (texmathp))
           (equal (car start-texmathp-why) "$"))
      (let ((math-start (cdr start-texmathp-why))
            (math-end
             (save-excursion
               (goto-char (cdr start-texmathp-why))
               (forward-char 1)
               (search-forward "$"))))
        (replace-region-contents
         (1+ math-start)
         (1- math-end)
         (lambda ()
           (let ((s (buffer-substring-no-properties (point-min) (point-max))))
             (with-temp-buffer
               (insert s)
               (goto-char (point-min))
               (while (re-search-forward "\\s-*_\\s-*" math-end t)
                 (replace-match "_" t t))
               (buffer-substring-no-properties (point-min)
                                               (point-max))))))))
     ((and start-in-latex-section-env (not end-in-latex-section-env))
      (save-excursion
        (goto-char start)
        (when TeX-fold-mode
          (TeX-fold-macro))))
     ((dynexp--looking-back-macro-to-fold-p)
      (let ((fold-end (point-marker))
            (beginnings (dynexp-split-macro (match-beginning 0))))
        (dolist (b beginnings)
          (goto-char b)
          (when TeX-fold-mode
            (TeX-fold-macro)))
        (goto-char fold-end)))
     ((and (fboundp 'czm-tex-fold--create-misc-overlay)
           (boundp 'czm-tex-fold--verb-regex)
           (looking-back czm-tex-fold--verb-regex (line-beginning-position)))
      (czm-tex-fold--create-misc-overlay
       (match-beginning 0) (match-end 0) (match-string 1))))))

(defun dynexp-latex-space ()
  "Function run after expansion in dynexp-space for LaTeX mode."
  (when (looking-back "mmm" (max (- (point) 3) (point-min)))
    (delete-char -3)
    (run-at-time
     "0.01 sec"
     nil
     #'dynexp--mmm-parse-LaTeX-environment)))

(defun dynexp-latex-setup ()
  "Set up dynexp hooks for LaTeX mode."
  (add-hook 'dynexp-at-begin-hook #'dynexp-latex-newline-before-begin nil t)
  (add-hook 'dynexp-after-start-hook #'dynexp-latex-after-start nil t)
  (add-hook 'dynexp-next-pre-expand-hook #'dynexp-latex-next-pre-expand nil t)
  (add-hook 'dynexp-next-post-expand-hook #'dynexp-latex-next-post-expand nil t)
  (add-hook 'dynexp-space-hook #'dynexp-latex-space nil t))

;;;###autoload
(defun dynexp-fold ()
  "Expand and then fold.
Example:
    (\"bthm\" \"<+TAB+>\\begin{theorem}
<+TAB+><+++>
<+TAB+>\\end{theorem}<++>\" dynexp-fold)"
  (let ((dynexp-latex-fold-after-expansion t))
    (dynexp)))

(defun dynexp-fold-and-mmm-parse ()
  "Expand, fold, and parse mmm.
Inserts \"mmm\" to cooperate with `dynexp-space'."
  (let ((dynexp-latex-fold-after-expansion t))
    (dynexp))
  (insert "mmm"))

(provide 'dynexp)
;;; dynexp.el ends here
