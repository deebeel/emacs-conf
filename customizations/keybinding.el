(key-chord-mode t)


(eval-after-load "company" #'(progn
                               (define-key company-mode-map (kbd "C-h") nil)
                               (define-key company-mode-map (kbd "M-p") nil)
                               (define-key company-mode-map (kbd "M-n") nil)
                               (define-key company-mode-map (kbd "C-SPC") #'company-select-next)
                               (define-key company-mode-map (kbd "S-SPC") #'company-select-previous)))


(define-key key-translation-map [tab] nil)
(add-hook 'server-visit-hook  (lambda ()
				(keyboard-translate ?\C-i ?\H-i)))

(global-set-key (kbd "H-i") 'previous-line)
(define-key key-translation-map [?\C-h] [?\C-?])
(global-set-key (kbd "s-e") #'er/expand-region)


(global-set-key (kbd "C-k") 'next-line)
(global-set-key (kbd "C-l") 'forward-char)
(global-set-key (kbd "C-j") 'backward-char)
(global-set-key (kbd "M-j") 'backward-word)
(global-set-key (kbd "M-l") 'forward-word)


(global-set-key (kbd "s-q")  #'indent-buffer)

(global-set-key (kbd "s-o") #'yas-ido-expand)
(global-set-key (kbd "C-o") #'ido-find-file)
(global-set-key (kbd "C-f") #'isearch-forward)
(global-set-key (kbd "C-S-f") #'isearch-backward)
(global-set-key (kbd "<f8>") #'delete-this-buffer-and-file)
(global-set-key (kbd "s-x") #'cut-line-or-region)
(global-set-key (kbd "s-d") #'copy-line-or-region)
(global-set-key (kbd "C-z") #'undo)
(global-set-key (kbd "C-v") #'yank)
(global-set-key (kbd "C-s") #'save-buffer)
(global-set-key (kbd "C-S-s") #'write-file)
(global-set-key (kbd "<f2>") #'smex)
(global-set-key (kbd "<f9>") #'magit-status)
(global-set-key (kbd "C-n") #'newline-and-indent)
(global-set-key (kbd "C-<right>") #'sp-forward-slurp-sexp)
(global-set-key (kbd "C-<left>") #'sp-backward-slurp-sexp)
(global-set-key (kbd "C-<up>") #'sp-add-to-previous-sexp)
(global-set-key (kbd "C-<down>") #'sp-add-to-next-sexp)
(global-set-key (kbd "C->") #'mc/mark-next-like-this)
(global-set-key (kbd "C-<") #'mc/mark-previous-like-this)
(global-set-key (kbd "C-S-d") #'duplicate-current-line)
(global-set-key (kbd "s-SPC") #'set-mark-command)
(global-set-key (kbd "M-a") #'mark-whole-buffer)
(global-set-key (kbd "S-C-<left>") #'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") #'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") #'shrink-window)
(global-set-key (kbd "S-C-<up>") #'enlarge-window)
(global-set-key (kbd "M-d") #'kill-word)
(global-set-key (kbd "M-h") #'backward-kill-word)
(global-set-key (kbd "C-d") #'delete-char)
(global-set-key (kbd "C-;") #'comment-line)
(global-set-key (kbd "<f6>") #'imenu)
