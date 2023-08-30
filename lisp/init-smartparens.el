(use-package smartparens-config
  :straight smartparens
  :hook ((after-init . smartparens-mode)
         )
  :custom
  (sp-autoskip-closing-pair nil)
  (sp-autoskip-opening-pair nil)
  (sp-autoinsert-pair nil)
  (sp-autodelete-pair nil)
  (sp-autodelete-closing-pair nil)
  (sp-autodelete-opening-pair nil)
  (sp-autodelete-wrap nil)
  :bind (:map smartparens-mode-map
              ;; commonly used outside to skip paren-exp
              ("M-F" . sp-forward-sexp)
              ("M-B" . sp-backward-sexp)
              ;; b&e of a paren-exp, paren not included
              ("M-A" . sp-beginning-of-sexp)
              ("M-E" . sp-end-of-sexp)
              ("M-N" . sp-next-sexp)
              ("M-P" . sp-previous-sexp)
              ;; upper&lower level paren-exp, nav through diff levels
              ("C-<up>" . sp-up-sexp)
              ("C-<down>" . sp-down-sexp)
              )
  )

(provide 'init-smartparens)
