;;; init-dashboard.el --- Init for dashboard

;; Filename: init-dashboard.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "emacs-dashboard")
(require 'dashboard)

;;; Code:
(dashboard-setup-startup-hook)
(setq dashboard-items '((agenda . 10)
                        ;; (bookmarks . 5)
                        (projects . 20)
                        (recents  . 20)
                        ;; (registers . 5)
                        ))


(provide 'init-dashboard)

;;; init-dashboard.el ends here
