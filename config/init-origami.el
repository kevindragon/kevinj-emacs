;;; init-origami.el --- Init for origami

;; Filename: init-origami.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

(add-extension-dir "origami.el")
(require 'origami)

(add-extension-dir "lsp-origami")
(require 'lsp-origami)

;;; Code:

(global-origami-mode)
(global-set-key (kbd "C-c z o") 'origami-open-node)
(global-set-key (kbd "C-c z f") 'origami-close-node)
(global-set-key (kbd "C-c z a") 'origami-close-all-nodes)
(global-set-key (kbd "C-c z r") 'origami-open-all-nodes)

(add-hook 'origami-mode-hook #'lsp-origami-mode)


(provide 'init-origami)

;;; init-origami.el ends here
