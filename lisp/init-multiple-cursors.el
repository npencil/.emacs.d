(use-package multiple-cursors
  :straight t
  :config
  (global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
  )

(provide 'init-multiple-cursors)
