;; Do check Lisp Machine Keyboards

;; key settings for macos
(setq mac-command-modifier 'super) ;; set (mac's) command to (emacs') control, original: super
(setq mac-option-modifier 'meta) ;; set (mac's) option to (emacs') meta
(setq mac-control-modifier 'control) ;; set (mac's) control to (emacs') super, support s-c (copy), s-v (yank), s-a (mark whole buffer), s-x (kill region) and other conventional shortcuts, consistent with mac/Windows 's control
(setq mac-function-modifier 'hyper) ;; set (mac's) fn to (emacs') hyper

;; global key bindings
(global-unset-key (kbd "C-<wheel-down>"))
(global-unset-key (kbd "C-<wheel-up>"))
(global-unset-key (kbd "M-0"))

(provide 'init-keys)
