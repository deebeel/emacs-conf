(defun append-semicolon ()
  (interactive)
  (save-excursion
    (end-of-line)
    (insert ";")))

(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))
(defun kill-expand ()
  (interactive)
  (progn
    (er/expand-region 1)
    (kill-region (region-beginning) (region-end))))



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

(defun check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
        (backward-char 1)
        (if (looking-at "->") t nil)))))

(defun do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))

(setq ido-enable-flex-matching nil)

(defun indent-or-complete ()
  (interactive)
  (if (looking-at "\\_>")
      (company-complete-common)
    (indent-according-to-mode)))

(defun my-tab-indent-or-complete ()
  (interactive)
  (if (minibufferp)
      (ido-complete)
    (if (or (not yas-minor-mode)
            (null (do-yas-expand)))
        (if (check-expansion)
            (company-complete-common)
          (indent-or-complete)))))


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
      ;; when       on       last line,  insert a newline first
      (when (or (= 1 (forward-line 1)) (eq (point) (point-max)))
        (insert "\n"))
      (while (> n 0)
        (insert current-line)
        (decf n)))))


