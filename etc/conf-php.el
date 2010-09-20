;; Add a key binding for PHP lint validation
(add-hook 'php-mode-hook
          '(lambda ()
             (define-key php-mode-map "\C-cl" 'php-lint)))

(defun php-lint ()
  "Perform a PHP lint on the current buffer and display the result"
  (interactive)
  ;; Send all the buffer to the STDIN of the 'php -l' command
  (shell-command-on-region (point-min) (point-max) "php -l")
)