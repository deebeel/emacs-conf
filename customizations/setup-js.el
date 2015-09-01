(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(eval-after-load "js2-mode" (lambda ()
			      (require 'js2-refactor)
                              (key-chord-define js2-mode-map ";;" #'append-semicolon) 
			      (js2r-add-keybindings-with-prefix "s-r")
                              (define-key js2-mode-map (kbd "M-j") nil)
                              (setq js2-auto-indent-p t)
                              (setq js2-bounce-indent-p t)
                              (setq js2-enter-indents-newline t)
                              (setq js2-highlight-level 3)
                              (setq js2-mode-show-parse-errors nil)
                              (setq js2-mode-show-strict-warnings nil)
			      (setq js2-include-browser-externs nil)
			      (setq js2-include-node-externs t)
			      (setq js2-include-jslint-globals nil)
			      (setq js2-include-rhino-externs nil)))

(add-hook 'js2-mode-hook (lambda ()
			   (rainbow-delimiters-mode t)
			   (js2-refactor-mode t)
                           (tern-mode t)
                           (subword-mode t)
                           (flycheck-mode t)))

(eval-after-load "tern" #'(progn
                            (setq company-tern-property-marker "")
                            (setq company-tern-meta-as-single-line t)))

(eval-after-load "company" (lambda ()
                             (add-to-list 'company-backends 'company-tern)))

(eval-after-load "flycheck" (lambda ()
                              (flycheck-add-mode 'javascript-eslint 'js2-mode)))



