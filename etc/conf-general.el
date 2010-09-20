;; enable syntax highlight
(global-font-lock-mode 1)

;; maximum colors
(setq font-lock-maximum-decoration t)

;; highlight the opening and closing parenthesis
(show-paren-mode t)

;; use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; save the session on exit
;; (desktop-save-mode 1)

;; select the color theme
(require 'color-theme)
(load-file "~/.emacs.d/themes/color-theme-twilight.el")
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-calm-forest)))
;; (color-theme-dark-laptop)
;; (color-theme-calm-forest)
;; (color-theme-arjen)

;; Show the line number
;; (require 'linum)
;; (global-linum-mode t)

;; Change the grep-find default command
(setq grep-find-command "find . -mount -follow -type f -print0 | xargs -0 -e grep -n -e ")

;; start the emacs server
;; (server-start)

;; Enable 1337 commands
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; Save file edit place
(require 'saveplace)
(setq-default save-place t)

;; Enhanced file open/manipulation
(require 'ffap)

;; Enhanced unique buffer naming
(require 'uniquify)

;; Enable ANSI Color
(require 'ansi-color)
(ansi-color-for-comint-mode-on)

;; Save a list of recent files visited.
(require 'recentf)
(recentf-mode 1)

;; Customizations in window mode
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (mouse-wheel-mode t)
  (blink-cursor-mode -1))

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Transparently open compressed files
(auto-compression-mode t)

;; make emacs use the clipboard
(setq x-select-enable-clipboard t)