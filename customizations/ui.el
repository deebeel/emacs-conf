(set-language-environment 'UTF-8)
(setq default-buffer-file-coding-system 'utf-8)
(setq-default coding-system-for-read    'utf-8)
(setq file-name-coding-system           'utf-8)
(set-selection-coding-system            'utf-8)
(set-keyboard-coding-system        'utf-8-unix)
(set-terminal-coding-system             'utf-8)
(prefer-coding-system                   'utf-8)


(blink-cursor-mode 0)
(menu-bar-mode -1)
(tool-bar-mode -1)

(toggle-truncate-lines)

(setq-default frame-title-format "%b (%f)")

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
(load-theme 'darcula t)

(set-face-attribute 'default nil :height 140)

(setq save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t)
