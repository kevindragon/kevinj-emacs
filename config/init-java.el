;;; init-java.el --- Init for java

;; Filename: init-java.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "lsp-java")
(require 'lsp-java)

(require 'dap-java)

(with-eval-after-load "lsp-mode"
  (add-to-list 'lsp-enabled-clients 'jdtls))

;;; Code:
(defun kj/java-mode-hook ()
  (setq mode-name "Ⓙ")
  (lsp)
  (symbol-overlay-mode 1)
  (setq-default tab-width 4))

(add-hook 'java-mode-hook #'kj/java-mode-hook)


(provide 'init-java)

;;; init-java.el ends here
