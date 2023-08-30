(use-package company
  :straight t
  :init
  (global-company-mode)
  :custom
  ;; Disable downcasing
  (company-dabbrev-downcase nil)
  ;; Drop-down menu settings
  (company-tooltip-align-annotations t)
  (company-show-quick-access 'left)
  )

;; https://github.com/tumashu/company-posframe
;; (use-package company-posframe
;;   :ensure t
;;   :config
;;   (company-posframe-mode)
;;   )

(provide 'init-company)
