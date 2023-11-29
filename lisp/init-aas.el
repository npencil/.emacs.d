;; aas and laas
 (use-package laas
   :straight t
   :defer t
   :hook ((LaTeX-mode . laas-mode)
          (org-mode . laas-mode)
          )
   :init
   (setq laas-accent-snippets nil)
   (setq laas-basic-snippets nil)
   ;;(setq laas-subscript-snippets nil)
   :custom
   (laas-enable-auto-space nil)
   :config
   (aas-set-snippets 'laas-mode
     "ii" nil
     "ip1" nil
     "jj" nil
     "jp1" nil
     "kk" nil
     "kp1" nil
     "nn" nil
     "np1" nil
     )
   )

(provide 'init-aas)
