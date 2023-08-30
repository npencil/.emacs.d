;; Configure Themes

;; zenburn-theme
;; (use-package zenburn-theme
;;   :ensure t
;;   :init
;;   (load-theme 'zenburn t)
;;   (set-face-attribute 'hl-line nil :background "#595959")
;;   (set-face-attribute 'region nil :background "#7e7e7e")
;;   )

;;(load-theme 'tango t)

;; Settings for the plain theme
;; (set-face-attribute 'region nil
;;                     :background "AntiqueWhite1")
;; (set-face-attribute 'highlight nil
;;                     :background "AntiqueWhite3")
;; (set-face-attribute 'font-lock-function-name-face nil
;;                     :foreground "dark green")

;; doom-themes
(use-package doom-themes
  :straight t
  :config
  (load-theme 'doom-one-light t))

(provide 'init-theme)
