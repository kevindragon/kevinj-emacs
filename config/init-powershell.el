;;; init-powershell.el --- Init for powershell

;; Filename: init-powershell.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "powershell.el")
(require 'powershell)
(require 'ob-powershell)

;;; Code:

;; (init-autoloads (expand-file-name "powershell" my-emacs-extension-dir)
;;                 (expand-file-name "init-powershell-autoloads.el"
;;                                   my-emacs-config-dir))
;; (load "init-powershell-autoloads.el")


(provide 'init-powershell)

;;; init-powershell.el ends here
