;; Or if you use use-package
(use-package dashboard
  :straight t
  :config
  (dashboard-setup-startup-hook)
  ;; (setq dashboard-items '((recents  . 8)))
  (setq dashboard-startup-banner nil)
  (setq dashboard-set-footer nil)
  (setq dashboard-banner-logo-title nil)
  )

(provide 'init-dashboard)
