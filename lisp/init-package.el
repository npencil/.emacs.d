;; MELPA
;; (require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; To override built-in packages
(setq package-enable-at-startup nil)
;; commented
;; (setq package-install-upgrade-built-in t)
;; (setq package-pinned-packages
;;       '(("org" . "gnu")))
;; (package-initialize)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(provide 'init-package)
