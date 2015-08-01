(setq tab-always-indent 'complete)
(setq-default indent-tabs-mode nil)
(rainbow-delimiters-mode t)
(show-paren-mode t)
(global-hl-line-mode t)
(global-company-mode t)
(setq company-idle-delay 0.1)
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq imenu-auto-rescan      t) 
(setq imenu-use-popup-menu nil) 
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

(yas-global-mode t)




