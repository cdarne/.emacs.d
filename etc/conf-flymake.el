(require 'flymake)

(defun flymake-start-syntax-check-process (cmd args dir)
  "Start syntax check process."
  (let* ((process nil))
    (condition-case err
        (progn
          (when dir
            (let ((default-directory dir))
              (flymake-log 3 "starting process on dir %s" default-directory)))
          (setq process (apply 'start-file-process "flymake-proc" (current-buffer) cmd args))
          (set-process-sentinel process 'flymake-process-sentinel)
          (set-process-filter process 'flymake-process-filter)
          (push process flymake-processes)

          (setq flymake-is-running t)
          (setq flymake-last-change-time nil)
          (setq flymake-check-start-time (flymake-float-time))

          (flymake-report-status nil "*")
          (flymake-log 2 "started process %d, command=%s, dir=%s"
                       (process-id process) (process-command process)
                       default-directory)
          process)
      (error
       (let* ((err-str (format "Failed to launch syntax check process '%s' with args %s: %s"
                               cmd args (error-message-string err)))
              (source-file-name buffer-file-name)
              (cleanup-f        (flymake-get-cleanup-function source-file-name)))
         (flymake-log 0 err-str)
         (funcall cleanup-f)
         (flymake-report-fatal-status "PROCERR" err-str))))))

;; (flymake-mode t)
;; (add-hook 'php-mode-hook (lambda () (flymake-mode 1)))
