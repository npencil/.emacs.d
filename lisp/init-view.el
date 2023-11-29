;; windows
(add-to-list 'default-frame-alist '(width . 86))
(setq frame-title-format '("%b " user-login-name "@" system-name))
(scroll-bar-mode -1)
(tool-bar-mode -1)
(fringe-mode nil)
(setq inhibit-startup-screen t)
;;(set-fringe-mode '(0 . 4))
;;(global-display-line-numbers-mode)

(setq-default cursor-type 'bar)

;; text
(setq-default require-final-newline nil)
(setq-default indent-tabs-mode nil)
(setq-default truncate-lines nil)
(setq-default word-wrap nil)
(global-visual-line-mode t)
(global-hl-line-mode t)
(setq-default fill-column 80)
;; replace selected text with what you type
(delete-selection-mode 1)

(provide 'init-view)
