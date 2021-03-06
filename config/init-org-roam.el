;;; init-org-roam.el --- Init for org-roam

;; Filename: init-org-roam.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "emacsql")
(add-extension-dir "emacsql-sqlite3")
(add-extension-dir "emacs-web-server")
(add-extension-dir "org-roam")
(add-extension-dir "org-roam-server")

(require 'org-roam)
(require 'org-protocol)
(require 'org-roam-server)

;;; Code:
(setq org-roam-directory (expand-file-name "Knowledge" my-workspace-dir))
;; (setq org-roam-directory (expand-file-name "org-roam" my-workspace-dir))
(setq org-roam-capture-templates
      '(("d" "default" plain (function org-roam-capture--get-point) "%?"
         :file-name "%<%Y%m%d%H%M%S>-${slug}"
         :head "#+title: ${title}\n\n"
         :unnarrowed t)
        ("g" "group")
        ("gc" "Group China" plain (function org-roam-capture--get-point)
         "%?"
         :file-name "China/%<%Y%m%d%H%M%S>-${slug}"
         :head "#+title: ${title}\n\n")))
(add-hook 'after-init-hook 'org-roam-mode)

(setq org-roam-server-host "127.0.0.1"
      org-roam-server-port 9090
      org-roam-server-authenticate nil
      org-roam-server-export-inline-images t
      org-roam-server-serve-files nil
      org-roam-server-served-file-extensions '("pdf" "mp4" "ogv")
      org-roam-server-network-poll t
      org-roam-server-network-arrows nil
      org-roam-server-network-label-truncate t
      org-roam-server-network-label-truncate-length 60
      org-roam-server-network-label-wrap-length 20)
;; (org-roam-server-mode)

;; (global-set-key (kbd "C-c n l") 'org-roam)
;; (global-set-key (kbd "C-c n f") 'org-roam-find-file)
;; (global-set-key (kbd "C-c n i") 'org-roam-insert)
;; (global-set-key (kbd "C-c n I") 'org-roam-insert-immediate)


(provide 'init-org-roam)

;;; init-org-roam.el ends here
