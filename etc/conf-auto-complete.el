;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/ac-dict")
;; (ac-config-default)
;; (require 'auto-complete-extension)
;; (require 'auto-complete-etags)

(require 'auto-complete)
(require 'auto-complete-config)
;; Default dictionaries
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/dict")
;; Custom dictionaires
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(ac-config-default)
(global-auto-complete-mode t)