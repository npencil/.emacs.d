(use-package smart-mode-line
  :straight t
  :config
  (sml/setup)
  (setq sml/theme 'respectful)
  (setq sml/show-eol t)
  ;; highlight minor-modes
  (add-to-list 'rm-text-properties '("\\` God\\'" 'face 'font-lock-warning-face))
  ;; (setq rm-blacklist
  ;;       (format "^ \\(%s\\)$"
  ;;               (mapconcat #'identity
  ;;                          '("Fly.*" "company.*" "WK" "WS" "Undo-Tree" "Helm" "yas" "ElDoc")
  ;;                          "\\|")))
  ;; only show these modes
  (setq rm-whitelist (mapconcat 'identity '("God" "Overt")  "\\|"))
  )

(provide 'init-smart-mode-line)
