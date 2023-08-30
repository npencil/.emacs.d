(use-package prog-mode
  :config
  ;; (add-hook 'prog-mode-hook 'outline-minor-mode)
  ;; (add-hook 'prog-mode-hook 'hs-minor-mode)
  :bind ("C-;" . comment-region)
  )

(provide 'init-prog-mode)
