;;; init-flycheck.el --- Init for flycheck

;; Filename: init-flycheck.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "flycheck")
(add-extension-dir "flycheck-posframe")
(require 'flycheck)

;;; Code:

;; (with-eval-after-load 'flycheck
;;   (require 'flycheck-posframe)
;;   (add-hook 'flycheck-mode-hook #'flycheck-posframe-mode))


(provide 'init-flycheck)

;;; init-flycheck.el ends here
