(add-to-list 'auto-mode-alist '("\\.rs$" . rust-mode))
(setq racer-rust-src-path "~/.local/share/rust_src/src")
(setq racer-cmd "/usr/local/bin/racer")
(eval-after-load "rust-mode" '(require 'racer))
(defun my-rust-hook ()
  (flycheck-mode)
  (racer-activate)
  (define-key rust-mode-map (kbd "<C-tab>") 'racer-complete-or-indent)
  (define-key rust-mode-map (kbd "M-.") 'racer-find-definition))

(add-hook 'rust-mode-hook 'my-rust-hook)
(add-hook 'flycheck-mode-hook 'flycheck-rust-setup)


