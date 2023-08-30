 (use-package ivy
   :straight t
   :custom
   (ivy-use-virtual-buffers t)
   :bind
   (("C-x b" . ivy-switch-buffer)
    )
   :config
   (ivy-mode 1))

 (use-package counsel
   :straight t
   :bind
   (("C-x C-f" . counsel-find-file)
    ("M-x" . counsel-M-x)
    ("M-y" . counsel-yank-pop)
    )
   :custom
   (counsel-find-file-ignore-regexp "\\`[#.]\\|[#~]\\'") ;; ignore dotfiles/temporary files by default, but can still access them by explicity inputing the name
   )

;; (ivy-mode 1)
;; (setq ivy-use-virtual-buffers t)
;; (setq ivy-count-format "(%d/%d) ")
;; (global-set-key (kbd "C-s") 'swiper-isearch)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; (global-set-key (kbd "M-y") 'counsel-yank-pop)

(provide 'init-ivy)
