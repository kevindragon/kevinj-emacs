;;; init-typescript.el --- Init for typescript

;; Filename: init-typescript.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "typescript.el")
(require 'typescript-mode)

;;; Code:
(with-eval-after-load "lsp-mode"
  (add-to-list 'lsp-enabled-clients 'ts-ls))

(defun kj/ts-mode-hook ()
	(lsp-deferred))

(add-hook 'typescript-mode-hook #'kj/ts-mode-hook)


(provide 'init-typescript)

;;; init-typescript.el ends here
