(use-package paren
  :init
  (show-paren-mode 1)
  :custom-face
  (show-paren-match ((t (:background "#2BCEB8" :foreground "#006400" :weight bold))))
  )

;; smartparens
(require 'init-smartparens)

;; electric
(require 'init-electric)

(provide 'init-paren)
