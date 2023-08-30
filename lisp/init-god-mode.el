(use-package god-mode
  :straight t
  :init
  (global-set-key (kbd "<escape>") #'god-mode-all)
  ;; disable this translation before loading God mode
  (setq god-mode-enable-function-key-translation nil)
  :hook
  ((god-mode-enabled . my/god-mode-update-cursor-type)
   (god-mode-disabled . my/god-mode-update-cursor-type))
  :config
  (define-key god-local-mode-map (kbd ".") #'repeat)
  (define-key god-local-mode-map (kbd "i") #'god-local-mode)
  ;; ensure that no buffers are skipped when using god-mode-all
  (setq god-exempt-major-modes nil)
  (setq god-exempt-predicates nil)
  (defun my/god-mode-update-cursor-type ()
    (setq cursor-type (if (or god-local-mode buffer-read-only) 'hollow 'box)))
  )

;; come with the god-mode package
(use-package god-mode-isearch
  :config
  (define-key isearch-mode-map (kbd "<escape>") #'god-mode-isearch-activate)
  (define-key god-mode-isearch-map (kbd "<escape>") #'god-mode-isearch-disable)
)
(provide 'init-god-mode)
