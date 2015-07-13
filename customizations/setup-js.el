(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(eval-after-load "js2-mode" (lambda ()
			      (require 'js2-refactor)
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

(add-to-list 'company-backends 'company-tern)
(eval-after-load "flycheck-mode"
  '(progn
     (flycheck-add-mode 'javascript-eslint 'js2-mode)
     (setq-default 'flycheck-disabled-checkers
		   (append flycheck-disabled-checkers
			   '(javascript-jshint)))))


(setq js-indent-level 2)



