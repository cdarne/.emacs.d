(add-to-list 'load-path "~/.emacs.d/site-lisp/jabber/share/emacs/site-lisp")

(load "jabber-autoloads")

(setq jabber-account-list '(("cedric.darne@gmail.com"
                             (:password . nil)
                             (:network-server . "talk.google.com")
                             (:port . 443)
                             (:connection-type . ssl))))

(add-hook 'jabber-chat-mode-hook 'goto-address)

(jabber-connect-all)