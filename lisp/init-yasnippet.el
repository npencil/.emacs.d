;; YASnippet

(use-package yasnippet
  :straight t
  :init
  (yas-global-mode 1)
  :hook ((post-self-insert . my/yas-try-expanding-auto-snippets))
  :custom
  (yas-snippet-dirs '("~/.emacs.d/yasnippets"))
  (yas-prompt-functions '(yas-dropdown-prompt))
  (yas-wrap-around-region nil)
  (yas-triggers-in-field t)
  ;; indentation
  (yas-indent-line 'fixed)
  (yas-also-indent-empty-lines t)
  (yas-also-auto-indent-first-line t)
  :config
  ;; auto expand
  ;; copied from https://gist.github.com/karthink/7d89df35ee9b7ac0c93d0177b862dadb
  ;; a little modification is made to https://github.com/joaotavora/yasnippet/issues/998
  (defun my/yas-try-expanding-auto-snippets ()
    (when (and (boundp 'yas-minor-mode) yas-minor-mode)
      (let ((yas-buffer-local-condition ''(require-snippet-condition . auto)))
        (yas-expand))))
  )

;;(add-hook 'post-command-hook #'my-yas-try-expanding-auto-snippets)

(provide 'init-yasnippet)
