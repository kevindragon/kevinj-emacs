;;; init-magit.el --- Init for magit

;; Filename: init-magit.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

(add-extension-dir "with-editor")
(add-extension-dir "magit/lisp")
(add-extension-dir "magit-popup")

(require 'magit)

;;; Code:

(global-set-key (kbd "M-n g") 'magit-status)


(provide 'init-magit)

;;; init-magit.el ends here
