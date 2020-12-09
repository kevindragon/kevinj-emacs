;;; init-company.el --- Init for company

;; Filename: init-company.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

(add-extension-dir "company-mode")
(require 'company)

(add-extension-dir "company-posframe")
(require 'company-posframe)

(add-extension-dir "pos-tip")

(add-extension-dir "company-quickhelp")
(require 'company-quickhelp)

;;; Code:

(setq company-minimum-prefix-length 2)
(add-hook 'company-mode-hook 'company-quickhelp-mode)
(add-hook 'after-init-hook 'global-company-mode)
(company-posframe-mode 1)


(provide 'init-company)

;;; init-company.el ends here
