(use-package imenu
  :custom
  (imenu-auto-rescan t)
  )

(use-package imenu-list
  :straight t
  :bind
  ("<f9>" . 'imenu-list-smart-toggle)
  :custom
  (imenu-list-position 'left)
  (imenu-list-size '0.25)
  )

(provide 'init-imenu-list)
