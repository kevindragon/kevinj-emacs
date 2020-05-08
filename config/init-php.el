;;; init-php.el --- Init for php

;; Filename: init-php.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "php-mode")
(load "php-mode-autoloads.el")

;;; Code:

(add-hook 'php-mode-hook #'lsp)


(provide 'init-php)

;;; init-php.el ends here
