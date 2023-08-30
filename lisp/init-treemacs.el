(use-package treemacs
  :straight t
  :bind (:map global-map
              ("M-0" . treemacs))
  :config
  (treemacs-resize-icons 16)
  (when treemacs-python-executable
      (treemacs-git-commit-diff-mode t))
  )

(provide 'init-treemacs)
