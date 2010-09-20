(require 'ide-skel)

(partial-completion-mode)
(icomplete-mode)

(global-set-key [f4] 'ide-skel-proj-find-files-by-regexp)
(global-set-key [f5] 'ide-skel-proj-grep-files-by-regexp)
(global-set-key [f9] 'ide-skel-toggle-left-view-window)
(global-set-key [f10] 'ide-skel-toggle-bottom-view-window)
(global-set-key [f11] 'ide-skel-toggle-right-view-window)
(global-set-key [C-next] 'tabbar-backward)
(global-set-key [C-prior]  'tabbar-forward)