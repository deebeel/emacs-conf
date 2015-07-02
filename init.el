;;;;
;; Packages
;;;;

;; Define package repositories
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)


(defvar required-packages  
 '(
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
   ensime
   scala-mode2
   sbt-mode
   ))

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
;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.
(load "navigation.el")
;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
(load "ui.el")
(load "editing.el")
(load "misc.el")
(load "elisp-editing.el")
(load "setup-clojure.el")
(load "setup-js.el")
(load "setup-rust.el")
