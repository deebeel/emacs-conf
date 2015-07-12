

(global-rainbow-delimiters-mode t)
(show-paren-mode 1)

(global-hl-line-mode 1)

(flyspell-mode t)

(global-company-mode)
(setq company-idle-delay 0.1)

(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq imenu-auto-rescan      t) ;; автоматически обновлять список функций в буфере
(setq imenu-use-popup-menu nil) ;; диалоги Imenu только в минибуфере


(global-set-key (kbd "C-S-d") 'duplicate-current-line)
(global-set-key (kbd "<C-tab>") 'company-complete)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "M-k") 'kill-whole-line)
(global-set-key (kbd "C-;") 'toggle-comment-on-line)
(global-set-key (kbd "<f6>") 'imenu)

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
    
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))


(defun toggle-comment-on-line ()
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))




