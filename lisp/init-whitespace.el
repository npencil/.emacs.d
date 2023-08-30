(use-package whitespace
  :init
  (global-whitespace-mode t)
  :custom
  ;; trailing whitespace only on non-empty lines (must follow a word)
  (whitespace-trailing-regexp
   "\\b\\(\\(\t\\| \\|\xA0\\|\x8A0\\|\x920\\|\xE20\\|\xF20\\)+\\)$")
  (whitespace-display-mappings
   '(
     (space-mark   ?\     [?·]     [?.])		; space - middle dot
     (space-mark   ?\xA0  [?¤]     [?_])		; hard space - currency sign
     ;; NEWLINE is displayed using the face `whitespace-newline'
     ;; (newline-mark ?\n    [?$ ?\n])			; eol - dollar sign
     (newline-mark ?\n    [?↵ ?\n] [?$ ?\n])	; eol - downwards arrow
     ;; (newline-mark ?\n    [?¶ ?\n] [?$ ?\n])	; eol - pilcrow
     ;; (newline-mark ?\n    [?¯ ?\n]  [?$ ?\n])	; eol - overscore
     ;; (newline-mark ?\n    [?¬ ?\n]  [?$ ?\n])	; eol - negation
     ;; (newline-mark ?\n    [?° ?\n]  [?$ ?\n])	; eol - degrees
     ;;
     ;; WARNING: the mapping below has a problem.
     ;; When a TAB occupies exactly one column, it will display the
     ;; character ?\xBB at that column followed by a TAB which goes to
     ;; the next TAB column.
     ;; If this is a problem for you, please, comment the line below.
     (tab-mark     ?\t    [?» ?\t] [?\\ ?\t])	; tab - right guillemet
     ))
  (whitespace-style '(face tabs trailing newline tab-mark newline-mark))
  :config
  (set-face-attribute 'whitespace-trailing nil
                      :background "DarkOrange")
  )

(add-hook 'write-file-hooks 'delete-trailing-whitespace)

(provide 'init-whitespace)
