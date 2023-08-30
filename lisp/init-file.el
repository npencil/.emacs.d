(setq default-directory "~/notes/")

(global-auto-revert-mode t)

;; default encoding
(set-language-environment 'utf-8)
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8-unix)
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

(provide 'init-file)
