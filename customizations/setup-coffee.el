(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.coffee.erb$" . coffee-mode))
(add-hook 'coffee-mode-hook
          (lambda ()
            (custom-set-variables
             '(coffee-tab-width 2))
            (subword-mode t)
            (highlight-indentation-current-column-mode t)
            (flycheck-mode t)
            (define-key coffee-mode-map "\C-j" 'coffee-newline-and-indent)
            (setq coffee-cleanup-whitespace nil)))




