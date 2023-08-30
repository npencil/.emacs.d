(use-package proof-general
  :straight t
  :custom
  (proof-three-window-mode-policy 'hybrid)
  (proof-tidy-response t)
  )

(use-package company-coq
  :straight t)

(use-package coq-mode
  :hook (coq-mode . company-coq-mode))

(provide 'init-coq)
