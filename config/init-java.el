;;; init-java.el --- Init for java

;; Filename: init-java.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "lsp-java")
(require 'lsp-java)

;;; Code:

(add-hook 'java-mode-hook #'lsp)


(provide 'init-java)

;;; init-java.el ends here
