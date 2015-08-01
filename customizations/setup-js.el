(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


(eval-after-load "js2-mode" (lambda ()
			      (require 'js2-refactor)
                              (key-chord-define js2-mode-map ";;" #'append-semicolon) 
			      (js2r-add-keybindings-with-prefix "s-r")
                              (define-key js2-mode-map (kbd "M-j") nil)
                              (setq js2-mode-show-parse-errors nil)
                              (setq js2-mode-show-strict-warnings nil)
			      (setq js2-include-browser-externs nil)
			      (setq js2-include-node-externs t)
			      (setq js2-include-jslint-globals nil)
			      (setq js2-include-rhino-externs nil)))

(add-hook 'js2-mode-hook (lambda ()
			   (rainbow-delimiters-mode t)
                           (tern-mode t)
			   (js2-refactor-mode t)
                           (subword-mode t)
                           (flycheck-mode t)))

(eval-after-load "company-mode" (lambda ()
				  (add-to-list 'company-backends 'company-tern)))
(require 'flycheck)
(eval-after-load "flycheck" (lambda ()
                             (progn
                               (flycheck-add-mode 'javascript-eslint 'js2-mode)
                               (setq-default flycheck-disabled-checkers
                                             (append flycheck-disabled-checkers
                                                     '(javascript-jshint))))))

(setq js-indent-level 2)



