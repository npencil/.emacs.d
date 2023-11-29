;; markdown-mode
(use-package markdown-mode
  :straight t
  :defer t
  :hook
  (markdown-mode . imenu-add-menubar-index)
  (markdown-mode . turn-on-auto-fill)
  :custom
  (markdown-add-footnotes-to-imenu t)
  (markdown-coding-system 'utf-8)
  (markdown-enable-math t)
  (markdown-header-scaling nil)
  (markdown-indent-on-enter nil)
  (markdown-table-align-p nil)
  (markdown-command "pandoc" )
  :config
  (setq indent-line-function 'insert-tab)
  )

(provide 'init-markdown)
