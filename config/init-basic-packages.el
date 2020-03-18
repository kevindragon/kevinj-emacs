;;; init-basic-packages.el --- Init for basic packages

;; Filename: init-basic-packages.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;; 添加s.el
(add-extension-dir "s.el")
(require 's)

;; 添加dash目录
(add-extension-dir "dash.el")
(require 'dash)

;; 添加f.el
(add-extension-dir "f.el")
(require 'f)

;; 添加ht.el(hash-table)
(add-extension-dir "ht.el")
(require 'ht)

(add-extension-dir "transient/lisp")

;; window-numbering
(add-extension-dir "window-numbering.el")
(require 'window-numbering)
(add-hook 'after-init-hook 'window-numbering-mode t)

;; emacs-which-key
(add-extension-dir "emacs-which-key")
(require 'which-key)
(which-key-mode)

(add-extension-dir "ace-window")
(add-extension-dir "avy")
(add-extension-dir "pfuture")
(add-extension-dir "polymode")

;; 添加exec-path-from-shell
(add-extension-dir "exec-path-from-shell")
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(provide 'init-basic-packages)

;;; init-basic-packages.el ends here
