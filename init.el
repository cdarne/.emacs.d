(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (wombat)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(defconst *is-a-mac* (eq system-type 'darwin))

(require 'init-elpa)
(require 'init-osx)

;; Tweak to make display more responsive
(setq redisplay-dont-pause t)


;; Highlight matching parenthesis
(show-paren-mode 1)


;; Slime config

(setq slime-lisp-implementations
      '((cslip ("/usr/local/bin/clisp"))
        (sbcl ("/usr/local/bin/sbcl") :coding-system utf-8-unix)))

(setq slime-contribs '(slime-fancy))


;; Auto save on focus loss
(defun save-all ()
    (interactive)
    (save-some-buffers t))

(add-hook 'auto-save-hook 'save-all)
(add-hook 'focus-out-hook 'save-all)


;; Backup files in /temp please
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))



(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
