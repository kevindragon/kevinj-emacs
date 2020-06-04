;;; init-icons.el --- Init for icons

;; Filename: init-icons.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "emacs-memoize")
(add-extension-dir "all-the-icons.el")
(require 'all-the-icons)

;;; Code:
(setq dashboard-footer-icon (all-the-icons-octicon "dashboard"
                                                   :height 1.1
                                                   :v-adjust -0.05
                                                   :face 'font-lock-keyword-face))

(provide 'init-icons)

;;; init-icons.el ends here
