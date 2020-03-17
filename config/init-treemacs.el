;;; init-treemacs.el --- Init for treemacs

;; Filename: init-treemacs.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

(add-extension-dir "treemacs/src/elisp")
(add-extension-dir "treemacs/src/extra")
(add-extension-dir "lsp-treemacs")
(require 'treemacs)
(require 'lsp-treemacs)

;;; Code:

;; (setq treemacs-silent-refresh t)


(provide 'init-treemacs)

;;; init-treemacs.el ends here
