(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)


(defvar required-packages  
  '(
    key-chord
    expand-region
    nlinum
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
    paredit
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

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")
;; Sets up exec-path-from-shell so that Emacs will use the correct
;; environment variables
(load "shell-integration.el")
(load "navigation.el")
(load "ui.el")
(load "editing.el")
(load "misc.el")
(load "elisp-editing.el")
(load "setup-js.el") 
(load "setup-rust.el")
(load "setup-json.el")
(load "setup-coffee.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (js2-refactor js2-mode json-mode coffee-mode cider clojure-mode-extra-font-locking clojure-mode flycheck-rust racer rust-mode paredit magit neotree company s rainbow-delimiters projectile smex ido-ubiquitous flycheck highlight-indentation nlinum expand-region key-chord powerline))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
