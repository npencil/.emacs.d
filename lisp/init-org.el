(use-package org
  :straight (:type built-in)
  :defer t
  :hook (;;(org-mode . turn-on-auto-fill)
         (org-mode . turn-on-org-cdlatex)
         )
  :init
  (setq org-directory "~/notes/org")
  :custom
  ;; (org-directory "~/org")
  (org-use-sub-superscripts '{})
  (org-default-notes-file (concat org-directory "/notes.org"))
  (org-allow-promoting-top-level-subtree t)
  (org-latex-prefer-user-labels t)
  ;; Appearance (set them to t with org-appear on for better visibility and editability)
  (org-hide-emphasis-markers t)
  ;; - show plain text for links
  (org-descriptive-links nil)
  ;; - latex-related display settings
  (org-pretty-entities t)
  (org-pretty-entities-include-sub-superscripts nil)
  (org-highlight-latex-and-related '(latex))
  (org-src-fontify-natively t)
  ;; Automatically generate CUSTOM_ID
  (org-id-link-to-org-use-id 'create-if-interactive-and-no-custom-id)
  :config
  ;; Org LaTeX
  (setq org-latex-packages-alist '(("" "my" t)))
  ;;(setq org-format-latex-options (plist-put org-format-latex-options ':html-scale 0.75))
  :bind
  (("C-c a" . org-agenda)
   :map org-cdlatex-mode-map
   ("'" . nil)
   ("C-\\" . org-cdlatex-math-modify)
   )
  )

(use-package org-appear
  :straight t
  :defer t
  :hook ((org-mode . org-appear-mode))
  :custom
  (org-appear-autoentities t)
  (org-appear-autosubmarkers t)
  (org-appear-inside-latex t)
  )

(use-package org-capture
  :bind (("C-c c" . org-capture) ;; global
         )
  :custom
  (org-capture-templates
   '(("t" "Tasks" entry (file+headline (lambda () (concat org-directory "/capture.org")) "Tasks") "* TODO %?\n  %U\n  %a")))
  )

(use-package org-roam
  :straight t
  :custom
  (org-roam-directory (file-truename "~/org-roam"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (org-roam-db-autosync-mode))

(use-package org-agenda
  ;;:after (org org-roam)
  :bind ("C-c a" . org-agenda)
  :custom
  (org-agenda-files
   '("~/notes/org-src" "~/notes/org"
     ))
  )

;; (setq org-agenda-files
;;         `(;;"~/org";;,org-directory
;;           ;;,org-roam-directory
;;           "~/org-src"
;;           "~/notes/comp4901x"
;;           "~/notes/fudan"
;;           ))

(use-package org-refile
;;  :after (org-agenda)
  :custom
  (org-refile-targets '((nil)
                        (org-agenda-files)))
  )

(use-package ol
  :bind (("C-c l" . org-store-link) ;; global
         )
  )

(use-package ox-latex
  :defer t
  :config
  ;; unicode
  (setq org-latex-inputenc-alist '(("utf8" . "utf8x")))
  )

;; Org HTML
(use-package ox-html
  :straight htmlize
  :defer t
  :custom
  (org-html-with-latex 'mathjax)
  ;; support arbitrary blocks
  (org-html-doctype "html5")
  (org-html-html5-fancy t)
  (org-html-mathjax-template
   "<script>
  window.MathJax = {
    loader: {load: ['[tex]/mathtools']},
    tex: {
      packages: {'[+]': ['mathtools']},
      ams: {
        multlineWidth: '%MULTLINEWIDTH'
      },
      tags: '%TAGS',
      tagSide: '%TAGSIDE',
      tagIndent: '%TAGINDENT'
    },
    chtml: {
      scale: %SCALE,
      displayAlign: '%ALIGN',
      displayIndent: '%INDENT'
    },
    svg: {
      scale: %SCALE,
      displayAlign: '%ALIGN',
      displayIndent: '%INDENT'
    },
    output: {
      font: '%FONT',
      displayOverflow: '%OVERFLOW'
    }
  };
</script>

<script
  id=\"MathJax-script\"
  async
  src=\"%PATH\">
</script>")
  )

(use-package ox
  :defer t
  :custom
  (org-export-with-creator nil)
  (org-export-with-date nil)
  (org-export-with-sub-superscripts '{}))

;; Publishing
(require 'init-org-publish)

;; (require 'org-latex-preview)
;; (use-package org-latex-preview
;;   :custom
;;   (org-preview-latex-default-process 'dvisvgm)
;;   ;;(org-latex-preview-auto-mode t)
;;   )
(provide 'init-org)
