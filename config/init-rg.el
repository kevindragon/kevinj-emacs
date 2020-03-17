;;; init-rg.el --- Init for rg

;; Filename: init-rg.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

(add-extension-dir "ripgrep.el")
(add-extension-dir "rg.el")
(add-extension-dir "Emacs-wgrep")

(require 'ripgrep)
(require 'rg)

;;; Code:

(global-set-key (kbd "C-c s") #'rg-menu)
(with-eval-after-load 'rg
  (rg-enable-default-bindings))


(provide 'init-rg)

;;; init-rg.el ends here
