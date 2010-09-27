;; load js2-mode
;; (autoload 'js2-mode "js2" nil t)
;; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; (custom-set-variables
;;  '(js2-auto-indent-p t)
;;  '(js2-basic-offset 4)
;;  '(js2-bounce-indent-p t)
;;  '(js2-cleanup-whitespace t)
;;  '(js2-highlight-level 3))

;; (add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))
;; (autoload 'javascript-mode "js-mode" nil t)

;; (eval-after-load 'js-mode
;;   '(progn (define-key js-mode-map "{" 'paredit-open-curly)
;;           (define-key js-mode-map "}" 'paredit-close-curly-and-newline)
;;           ;; fixes problem with pretty function font-lock
;;           (define-key js-mode-map (kbd ",") 'self-insert-command)
;;           (font-lock-add-keywords
;;            'js-mode `(("\\(function *\\)("
;;                        (0 (progn (compose-region (match-beginning 1)
;;                                                  (match-end 1) "ƒ")
;;                                  nil)))))))