(use-package flycheck
  :straight t
  :defer t
  :init
  (global-flycheck-mode)
  :config
  (setq flycheck-python-pylint-executable "pylint")
  :custom
  (flycheck-gcc-language-standard "c++17")
  )

(provide 'init-flycheck)
