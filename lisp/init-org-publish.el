(use-package ox-publish
  :defer t
  :custom
  (org-publish-list-skipped-files nil) ;; a lot of unchanged svg files
  (org-html-validation-link nil)
  (org-html-head-include-default-style nil)
  ;; inserted into <head>
  (org-html-head
   (with-temp-buffer
     (insert-file-contents-literally "~/org-src/head.html")
     (buffer-substring-no-properties (point-min) (point-max))))
  (org-html-home/up-format
   (with-temp-buffer
     (insert-file-contents-literally "~/org-src/home-up.html")
     (buffer-substring-no-properties (point-min) (point-max)))
   )
  (org-html-preamble
   (with-temp-buffer
     (insert-file-contents-literally "~/org-src/preamble.html")
     (buffer-substring-no-properties (point-min) (point-max))))
  (org-html-postamble t)
  (org-html-postamble-format
   `(("en"
      ,(with-temp-buffer
         (insert-file-contents-literally "~/org-src/postamble.html")
         (buffer-substring-no-properties (point-min) (point-max))))))
  (org-html-prefer-user-labels t)
  (org-html-self-link-headlines t)
  ;;(org-html-use-infojs t)
  (org-html-link-home "/index.html")
  (org-html-link-up "../")
  ;; for with creator/date, see ox
  :config
  (setq org-publish-project-alist
        '(
          ;; the main project
          ("org-blog"
           :components ("static" "org-src")
           )
          ;; sub-projects
          ("static"
           :base-directory "~/org-src/"
           :base-extension "css\\|js\\|svg\\|woff\\|woff2\\|png\\|pdf"
           :publishing-directory "~/blog/"
           :recursive t
           :publishing-function (org-publish-attachment)
           )
          ("org-src"
           :base-directory "~/org-src/"
           :publishing-directory "~/blog/"
           ;; :exclude "\\(.*\\.draft\\.org.*\\)\\|\\(.*private/.*\\)\\|\\(.*references/.*\\)\\|\\(.*math/.*\\)"
           ;;:include "index.org"
           :base-extension "org"
           :recursive t
           :publishing-function (org-html-publish-to-html)
           ;;:auto-sitemap t
           ;;:sitemap-title "Sitemap"
           ;;:makeindex t
           )
          ("homepage"
           :components ("homepage-static" "homepage-doc")
           )
          ("homepage-static"
           :base-directory "~/homepage/src/"
           :base-extension "css\\|js\\|svg\\|woff\\|woff2\\|png\\|pdf"
           :publishing-directory "~/homepage/public/"
           :recursive t
           :publishing-function (org-publish-attachment)
           )
          ("homepage-doc"
           :base-directory "~/homepage/src/"
           :publishing-directory "~/homepage/public/"
           :base-extension "org"
           ;;:recursive t
           :publishing-function (org-html-publish-to-html)
           ;;:auto-sitemap t
           ;;:sitemap-title "Sitemap"
           ;;:makeindex t
           )
          )
        )
  )

(provide 'init-org-publish)
