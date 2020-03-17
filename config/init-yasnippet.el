;;; init-yasnippet.el --- Init for yasnippet

;; Filename: init-yasnippet.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "yasnippet")
(require 'yasnippet)

(add-extension-dir "yasnippet-snippets")
(require 'yasnippet-snippets)

;;; Code:

(yas-global-mode 1)


(provide 'init-yasnippet)

;;; init-yasnippet.el ends here
