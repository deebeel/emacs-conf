(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(setq load-prefer-newer t)
(setq gc-cons-threshold 50000000)
(setq large-file-warning-threshold 100000000)
(defvar required-packages  
  '(
    flx-ido
    key-chord
    expand-region
    markdown-mode
    highlight-indentation
    flycheck
    ido-ubiquitous
    smex
    projectile
    rainbow-delimiters
    s
    company
    neotree
    magit
    whitespace
    dash
    rust-mode
    racer
    flycheck-rust
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    coffee-mode
    json-mode
    js2-mode
    company-tern
    js2-refactor))

(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package required-packages)
  (unless (package-installed-p package)
    (package-install package)))


(add-to-list 'load-path "~/.emacs.d/vendor")

;;;;
;; Customization
;;;;
;;;;

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")
;; Sets up exec-path-from-shell so that Emacs will use the correct
;; environment variables

(load-library "shell-integration")
(load-library "navigation")
(load-library "ui")
(load-library "my-misc")
(load-library "setup-js") 
(load-library "setup-rust")
(load-library "setup-json")
(load-library "setup-coffee")
(load-library "editing")
(load-library "functions")
(load-library "keybinding")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (tern-auto-complete auto-complete web-beautify flx-ido paredit markdown-mode smex smartparens rainbow-delimiters racer projectile nlinum neotree magit key-chord json-mode js2-refactor ido-ubiquitous highlight-indentation flycheck-rust expand-region company-tern coffee-mode clojure-mode-extra-font-locking cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
