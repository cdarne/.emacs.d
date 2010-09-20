(ido-mode t)

;; enable fuzzy matching and other usefull options
(setq ido-enable-prefix nil
 ido-enable-flex-matching t
 ido-create-new-buffer 'always
 ido-use-filename-at-point 'guess
 ido-max-prospects 10)