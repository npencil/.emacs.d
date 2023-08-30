;; mode line
(use-package time
  :init
  (display-time-mode 1)
  :custom
  (display-time-24hr-format t)
  (display-time-default-load-average nil) ;;
  )
(display-battery-mode 1)
;; current line && column numbers in mode line
(line-number-mode t)
(column-number-mode t) ;;
(provide 'init-mode-line)
