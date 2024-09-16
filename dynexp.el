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
(require 'cl-lib)
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

;;;###autoload
(cl-defun dynexp-fold ()
  "Expand and then fold.
Example:
    (\"bthm\" \"<+TAB+>\\begin{theorem}
<+TAB+><+++>
<+TAB+>\\end{theorem}<++>\" dynexp-fold)"
  (dynexp--core :fold t))

(cl-defun dynexp-fold-and-mmm-parse ()
  "Expand, fold, and parse mmm.
Inserts \"mmm\" to cooperate with `dynexp-space'."
  (dynexp--core :fold t)
  (insert "mmm"))

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

(defun dynexp-cancel ()
  "Cancel expansion."
  (interactive)
  (backward-delete-char (- (point) last-abbrev-location))
  (insert last-abbrev-text))

(defun dynexp-delete-leading-space-dynexp ()
  "Delete leading space, then expand.
Example:
    (\"hu\" \"^{<+++>}<++>\" dynexp-delete-leading-space-dynexp)"
  (if (texmathp)
      (progn
        (save-excursion
          (goto-char last-abbrev-location)
          (save-excursion
            (while (looking-back "[[:space:]]+" (line-beginning-position))
              (replace-match ""))
            (setq last-abbrev-location (point))))
        (dynexp--core))
    (dynexp-cancel)))

;;;###autoload
(defun dynexp ()
  "Expand."
  (dynexp--core))

(cl-defun dynexp--core (&key fold)
  "Core function for dynamic expansion.
If FOLD is non-nil, then fold the macro after inserting it."
  (interactive)
  (let ((start last-abbrev-location)
        (end (point-marker)))

    ;; Clear <+START+> and <+END+> for backwards compatibility
    (save-excursion
      (goto-char start)
      (when (search-forward "<+START+>" (marker-position end) t)
        (replace-match ""))
      (goto-char (marker-position end))
      (when (search-backward "<+END+>" start t)
        (replace-match "")))

    (goto-char start)
    (save-excursion
      (while (search-forward "<+TAB+>" (marker-position end) t)
        (replace-match "")
        (when (and (looking-at-p "\\\\begin")
                   (not (looking-back "^[[:space:]]*" (line-beginning-position))))
          (newline-and-indent))))

    (search-forward "<+++>")
    (replace-match "")
    (forward-char)
    (backward-char)
    (when (and TeX-fold-mode
               (looking-back "\\\\item " (line-beginning-position)))
      (save-excursion
        (goto-char (match-beginning 0))
        (TeX-fold-macro)))

    (when (and TeX-fold-mode fold)
      (TeX-fold-region start (point))
      (TeX-fold-region (point) (marker-position end)))

    (insert "%!!!")
    (set-marker end nil)))

;;;###autoload
(defun dynexp-next ()
  "Expand abbrev, remove <++> placeholders, fold LaTeX macros."
  (interactive)
  (when (and
         (texmathp)
         (member last-command '(self-insert-command dynexp-space))
         (let ((_keys (recent-keys))
               (len (length (recent-keys))))
           (and (>= len 2)
                (equal ?\  (aref (recent-keys) (- len 2)))
                (looking-back " " 1))))
    (delete-char -1))
  (expand-abbrev)
  (let ((start (point))
        (start-in-latex-section-env (dynexp--in-latex-section-env-p))
        (start-texmathp (texmathp)))
    (when (search-forward "<++>" nil t)
      (replace-match ""))
    (let ((end-in-latex-section-env (dynexp--in-latex-section-env-p)))
      (cond
       ((and start-texmathp
             (not (texmathp))
             (equal (car texmathp-why)
                    "$"))
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
               (buffer-substring-no-properties (point-min)
                                               (point-max)))))))
       ((and start-in-latex-section-env (not end-in-latex-section-env))
        (save-excursion
          (goto-char start)
          (when TeX-fold-mode
            (TeX-fold-macro))))
       ((dynexp--looking-back-macro-to-fold-p)
        (let ((end (point-marker))
              (beginnings (dynexp-split-macro (match-beginning 0))))
          (dolist (b beginnings)
            (goto-char b)
            (when TeX-fold-mode
              (TeX-fold-macro)))
          (goto-char end)))
       ((and (fboundp 'czm-tex-fold--create-misc-overlay)
             (boundp 'czm-tex-fold--verb-regex)
             (looking-back czm-tex-fold--verb-regex (line-beginning-position)))
        (czm-tex-fold--create-misc-overlay (match-beginning 0) (match-end 0)
                                           (match-string 1)))))))

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

;;;###autoload
(defun dynexp-space ()
  "Expand dynamic abbreviation.
If no space precedes the cursor and we can expand the
abbreviation, then do so.  Otherwise, simply insert a space.  If
the expansion ends with \"%!!!\", then delete that."
  (interactive)
  ;; If there's no space behind us, then expand, delete any spurious
  ;; "%!!!", and insert a space.  Otherwise, simply insert a space.
  (if (and abbrev-mode
           (not (looking-back " " 1))
           (expand-abbrev))
      (cond ((looking-back "%!!!" (max (- (point) 4) (point-min)))
             (search-backward "%!!!")
             (replace-match ""))
            ((looking-back "%!!!mmm" (max (- (point) 7) (point-min)))
             (search-backward "%!!!mmm")
             (replace-match "")
             ;; This next hack somehow avoids putting abbrev-mode in a
             ;; buffer-local broken state.
             (run-at-time
              "0.01 sec"
              nil
              #'dynexp--mmm-parse-LaTeX-environment))
            (t
             (insert " ")))
    (insert " ")))

;;;###autoload
(defun dynexp-modify-abbrev-table (table abbrevs)
  "Define abbreviations in TABLE given by ABBREVS."
  (unless table
    (error "Abbrev table does not exist"))
  (dolist (abbrev abbrevs)
    (define-abbrev table (car abbrev) (cadr abbrev) (caddr abbrev))))

(defcustom dynexp-auto-expand-list '()
  "List of abbrevs to auto-expand under `dynexp-auto-expand-mode'.")

(defun dynexp-auto--expand ()
  "Expand abbrevs from `dynexp-auto-expand-list' if point is at word end."
  (let* ((bounds (bounds-of-thing-at-point 'word))
         (word-end (cdr bounds))
         (word (and bounds (buffer-substring-no-properties (car bounds) word-end))))
    (when (and word
               (= (point) word-end)  ; Check if point is at word end
               (member word dynexp-auto-expand-list))
      (dynexp-space))))

;;;###autoload
(define-minor-mode dynexp-auto-expand-mode
  "Minor mode to automatically expand certain abbrevs."
  :lighter " AutoExp"
  (if dynexp-auto-expand-mode
      (add-hook 'post-self-insert-hook #'dynexp-auto--expand nil t)
    (remove-hook 'post-self-insert-hook #'dynexp-auto--expand t)))

(provide 'dynexp)
;;; dynexp.el ends here
