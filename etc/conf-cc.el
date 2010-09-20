;; Customizations for all modes in CC Mode
(defun my-c-mode-common-hook ()
  ;; activate the auto-newline and hungry-delete
  (c-toggle-auto-hungry-state 1)
  ;; enable subword mode (handling symbol mixing uppercases and lowercase letters eg. GtkWindow)
  ;; (c-subword-mode 1)
  ;; set code style options
  (setq tab-width 4
        ;; make sure we use spaces, not tabs
        indent-tabs-mode nil
        ;; set the basic offset
        c-basic-offset 4)
  ;; set the default style (indentation, braces, etc...)
  (setq c-default-style '((other . "bsd")))
  ;; no indentation for the opening braces (if, while, etc..)
  (c-set-offset 'substatement-open 0))
  

;; add my customisation hook
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)