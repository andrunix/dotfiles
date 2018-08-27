(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Disable menu bar unless on osx then use osx theme
(when (or (not (eq system-type 'darwin)) (not (display-graphic-p)))
  (menu-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(setq cursor-type (quote box))
(setq ring-bell-function 'ignore)
;; (setq inhibit-startup-screen t)
;; prevent splash screen
(setq inhibit-splash-screen t)

(fset 'yes-or-no-p 'y-or-n-p)        ; enable y/n answers

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(line-number-mode t)      ; mode line settings
(display-line-numbers-mode 'relative)
(column-number-mode t)
(show-paren-mode t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default indicate-empty-lines nil)

(setq-default truncate-lines t)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Run Git Bash
(setq explicit-shell-file-name "C:/Program Files/git/bin/bash.exe")
(setq explicit-bash.exe-args '("--login" "-i"))


(when (display-graphic-p)
  (set-frame-height (selected-frame) 40)
  (when (member "Consolas" (font-family-list))
    (add-to-list 'default-frame-alist '(font . "Consolas-10")))
  ;; (load-theme 'solarized-light t)
)

(global-set-key (kbd "<f2>") 'xah-new-empty-buffer)    ; F2
(global-set-key (kbd "H-<return>") 'toggle-fullscreen)

(provide 'core-ui)
