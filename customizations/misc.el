(global-set-key (kbd "<f1> k") 'describe-key)
(global-set-key (kbd "<f1> v") 'describe-variable)
(global-set-key (kbd "<f1> f") 'describe-function)
(eval-after-load "help-mode" (lambda ()
                               (define-key help-mode-map (kbd "j") 'backward-char)
                               (define-key help-mode-map (kbd "l") 'forward-char)
                               (define-key help-mode-map (kbd "i") 'previous-line)
                               (define-key help-mode-map (kbd "k") 'next-line)))

(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)


(setq inhibit-startup-message t)
