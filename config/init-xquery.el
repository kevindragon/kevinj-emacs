;;; init-xquery.el --- Init for xquery

;; Filename: init-xquery.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

(add-extension-dir "xquery-mode")
(require 'xquery-mode)

;;; Code:

(setq indent-tabs-mode nil)
(setq tab-width 4)
(setq tab-stop-list (number-sequence 4 100 4))


(provide 'init-xquery)

;;; init-xquery.el ends here
