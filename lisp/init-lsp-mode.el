;; https://emacs-lsp.github.io/lsp-mode/page/installation/#use-package
(use-package lsp-mode
  :straight t
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         ;; (LaTeX-mode . lsp-deferred)
         ;; (html-mode . lsp-deferred)
         ;; (python-mode . lsp-deferred)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred)
 )

;; optionally
(use-package lsp-ui
  :straight t
  :commands lsp-ui-mode
  ;;https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/
  :custom
  (lsp-ui-doc-show-with-cursor t)
  (lsp-ui-doc-show-with-mouse t)
  )
;; if you are helm user
;; (use-package helm-lsp
;;   :ensure t
;;   :commands helm-lsp-workspace-symbol)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs
  :straight t
  :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
;; (use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optional if you want which-key integration
(use-package which-key
    :config
    (which-key-mode))

;; Languages

;; LTEX (grammar and spelling check for markup docs using LanguageTool)
;; Install LTEX itself first: I choose the platfform-independent file,
;; so https://www.oracle.com/hk/java/technologies/downloads/ is needed
;; Put ltex-ls-xx.x.x.tar.gz under ~/.emacs.d/.cache/lsp/ltex-ls/
;; Extract it, rename the folder "ltex-ls-xx.x.x" with "latest"
;; Validation: Open a markup doc, and you will see
;; "LSP :: ltex-ls:xxxx initialized successfully in folders ..."
(use-package lsp-ltex
  :straight t
  :hook ((LaTeX-mode) . (lambda ()
                       (require 'lsp-ltex)
                       (lsp-deferred)))  ; or lsp-deferred
  :init
  (setq lsp-ltex-version "16.0.0")  ; make sure you have set this, see below
  :custom
  (lsp-ltex-language "en-US")
  )

;; https://github.com/emacs-grammarly/lsp-grammarly
(use-package lsp-grammarly
  :straight t
  :hook (org-mode . (lambda ()
                       (require 'lsp-grammarly)
                       (lsp-deferred)))  ; or lsp
  )

(provide 'init-lsp-mode)
