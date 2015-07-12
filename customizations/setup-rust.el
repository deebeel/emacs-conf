(add-to-list 'auto-mode-alist '("\\.rs$" . rust-mode))
(eval-after-load "rust-mode" (lambda ()
                               (setq racer-rust-src-path "~/.local/share/rust_src/src")
                               (setq racer-cmd "/usr/local/bin/racer")
                               (require 'racer)
                               (define-key rust-mode-map (kbd "<C-tab>") 'racer-complete-or-indent)
                               (define-key rust-mode-map (kbd "M-.") 'racer-find-definition)))
(add-hook 'rust-mode-hook (lambda ()
                            (flycheck-mode)
                            (racer-activate)
                            (flycheck-rust-setup)))



