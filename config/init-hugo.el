;;; init-hugo.el --- Init for hugo

;; Filename: init-hugo.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "emacs-easy-hugo")
(require 'easy-hugo)

;;; Code:
(setq easy-hugo-basedir "c:/workspace/hugo-blog"
			easy-hugo-server-flags "--buildDrafts")


(provide 'init-hugo)

;;; init-hugo.el ends here
