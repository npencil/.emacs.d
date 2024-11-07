;; init files
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;; org-mode dev
;;(add-to-list 'load-path "~/.emacs.d/org-dev/lisp")
;; Minimize garbage collection during startup
(setq gc-cons-threshold most-positive-fixnum)

;; From https://github.com/purcell/emacs.d/:
;; Adjust garbage collection thresholds during startup, and thereafter

(setq gc-cons-threshold (* 20 1024 1024))
(add-hook 'emacs-startup-hook
          (lambda () (setq gc-cons-threshold (* 128 1024 1024))))

;; Load custom.el
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Ref:https://www.gnu.org/software/emacs/manual/html_node/ccmode/Config-Basics.html

;; Package
(setq search-invisible t)
(require 'init-package)
(require 'init-use-package)

;; Appearance
;; - Theme
(require 'init-theme)
;; - Fonts
(require 'init-font)
;; - View
(require 'init-view)
;; - Parentheses
(require 'init-paren)
;; - whitespace
(require 'init-whitespace)
;; - dashboard
(require 'init-dashboard)
;; - Mode line
(require 'init-mode-line)
;; smart-mode-line
(require 'init-smart-mode-line)

;; File (encoding, backups, auto revert, etc.)
(require 'init-file)

;; Keys
(require 'init-keys)
(require 'init-god-mode)
;; which-key-mode
(require 'init-which-key)

;; prog-mode
(require 'init-prog-mode)

;; Language Server
;; eglot
;; (require 'init-eglot)
;; lsp-mode
;;(require 'init-lsp-mode)

;; hungry-deletet
(require 'init-hungry-delete)

;; smooth-scrolling
;;(require 'init-smooth-scrolling)

;; ace-window
(require 'init-ace-window)

;; multiple-cursors
(require 'init-multiple-cursors)

;; undo-tree
(require 'init-undo-tree)

;; emacs-helm
;; (require 'init-helm)
;; ivy
(require 'init-ivy)

;; company-mode
(require 'init-company)

;; prettify-symbols
(setq prettify-symbols-unprettify-at-point 'right-edge)

;; snippets & YASnippet
(require 'init-yasnippet)
(require 'init-yasupp)
(require 'init-aas)


;; treemacs
(require 'init-treemacs)

;; imenu & imenu-list
(require 'init-imenu-list)

;; Languages
;;(require 'init-cpp)
;;(require 'init-yaml)
;;(require 'init-json)
;; - reftex, cdlatex, latex
(require 'init-latex)
(require 'init-markdown)
(require 'init-org)
;;(require 'init-python)
(require 'init-coq)

;; flycheck
(require 'init-flycheck)

;; ispell (hunspell)
(require 'init-ispell)

(put 'set-goal-column 'disabled nil)
(provide 'init)
