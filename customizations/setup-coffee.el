(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.coffee.erb$" . coffee-mode))
(add-hook 'coffee-mode-hook
          (lambda ()
            (subword-mode t)
            (highlight-indentation-current-column-mode t)
            (flycheck-mode t)
            (setq coffee-cleanup-whitespace nil)))





