;; Turn off mouse interface early in startup to avoid momentary display
;; (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Add custom load path
(add-to-list 'load-path "~/.emacs.d")
;; Add all top-level subdirectories of .emacs.d to the load path
(progn (cd "~/.emacs.d")
       (normal-top-level-add-subdirs-to-load-path))

;; Add the conf files directory
(add-to-list 'load-path "~/.emacs.d/etc")

; Third party libraries in ~/.emacs.d/site-lisp
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(progn (cd "~/.emacs.d/site-lisp")
       (normal-top-level-add-subdirs-to-load-path))

;; Set the default working dir
(cd "~/")

;; Direct lib load
(require 'haml-mode)
(require 'sass-mode)
(require 'ediff-trees)

;; Load my confs
(load-library "conf-general")
(load-library "conf-cua-mode")
(load-library "conf-auto-complete")
(load-library "conf-autopair")
(load-library "conf-ido")
(load-library "conf-lisp")
(load-library "conf-nxhtml")
(load-library "conf-cc")
(load-library "conf-js")
(load-library "conf-php")
(load-library "conf-csv-mode")
(load-library "conf-ide-skel")
(load-library "conf-keybindings")
(load-library "conf-flymake")
(load-library "conf-yaml")
(load-library "conf-cucumber")

(defun recompile-init ()
  "Byte-compile all config files"
  (interactive)
  (byte-recompile-directory "~/.emacs.d/etc" 0)
  (byte-recompile-directory "~/.emacs.d/site-lisp" 0))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(mumamo-margin-info-global-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "grey14"))))
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "grey16"))))
 '(mumamo-background-chunk-submode2 ((((class color) (min-colors 88) (background dark)) (:background "grey18"))))
 '(mumamo-background-chunk-submode3 ((((class color) (min-colors 88) (background dark)) (:background "grey20"))))
 '(mumamo-background-chunk-submode4 ((((class color) (min-colors 88) (background dark)) (:background "grey22")))))
