(setq yas-snippet-dirs (list
			"~/.emacs.d/my-snippets/"
			(concat "~/.emacs.d/elpa/"
				(car (cl-remove-if-not #'(lambda (x) (string-match "yasnippet" x))
                                                       (directory-files "~/.emacs.d/elpa"))) "/snippets")))
(defun cut-line-or-region ()
  "Cut the current line if a region is not selected"
  (interactive)
  (progn (if (use-region-p)
             (kill-region (region-beginning) (region-end) t)
           (kill-region (line-beginning-position) (line-beginning-position 2)))))
(defun copy-line-or-region ()
  "Copy the current line if a region is not selected"
  (interactive)
  (let (p1 p2)
    (progn (if (use-region-p)
               (progn (setq p1 (region-beginning))
                      (setq p2 (region-end)))
             (progn (setq p1 (line-beginning-position))
                    (setq p2 (line-end-position)))))
    (kill-ring-save p1 p2)))



(defun yas-ido-expand ()
  "Lets you select (and expand) a yasnippet key"
  (interactive)
  (let ((original-point (point)))
    (while (and
            (not (= (point) (point-min) ))
            (not
             (string-match "[[:space:]\n]" (char-to-string (char-before)))))
      (backward-word 1))
    (let* ((init-word (point))
           (word (buffer-substring init-word original-point))
           (list (yas-active-keys)))
      (goto-char original-point)
      (let ((key (remove-if-not
                  (lambda (s) (string-match (concat "^" word) s)) list)))
        (if (= (length key) 1)
            (setq key (pop key))
          (setq key (ido-completing-read "key: " list nil nil word)))
        (delete-char (- init-word original-point))
        (insert key)
        (yas-expand)))))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun duplicate-current-line (&optional n)
  (interactive "p")
  (save-excursion
    (let ((nb (or n 1))
          (current-line (thing-at-point 'line)))
      ;; when on last line, insert a newline first
      (when (or (= 1 (forward-line 1)) (eq (point) (point-max)))
        (insert "\n"))
      (while (> n 0)
        (insert current-line)
        (decf n)))))


