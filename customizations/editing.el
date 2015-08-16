(setq tab-always-indent 'complete)
(normal-erase-is-backspace-mode 1)
(setq-default indent-tabs-mode nil)
(show-paren-mode t)
(global-hl-line-mode t)
(global-company-mode t)
(setq yas-snippet-dirs (list
			"~/.emacs.d/my-snippets/"
			(concat "~/.emacs.d/elpa/"
				(car (cl-remove-if-not #'(lambda (x) (string-match "yasnippet" x))
                                                       (directory-files "~/.emacs.d/elpa"))) "/snippets")))
(yas-global-mode t)
(column-number-mode t)
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




