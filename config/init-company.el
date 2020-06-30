;;; init-company.el --- Init for company

;; Filename: init-company.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

(add-extension-dir "company-mode")
(require 'company)

(add-extension-dir "pos-tip")

(add-extension-dir "company-quickhelp")
(require 'company-quickhelp)

(add-extension-dir "company-lsp")
(require 'company-lsp)

;;; Code:

(setq company-minimum-prefix-length 2)
(add-hook 'company-mode-hook 'company-quickhelp-mode)
(add-hook 'after-init-hook 'global-company-mode)

;; add company lsp backend
(push 'company-lsp company-backends)

(provide 'init-company)

;;; init-company.el ends here
