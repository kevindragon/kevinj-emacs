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

(add-extension-dir "emacs-deferred")

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
(add-extension-dir "emacs-request")

(add-extension-dir "posframe")
(with-eval-after-load 'posframe
  (setq posframe-mouse-banish nil))

(add-extension-dir "bui.el")

;; 添加exec-path-from-shell
(add-extension-dir "exec-path-from-shell")
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; websocket算是基础包进行加载
(add-extension-dir "emacs-websocket")

(add-extension-dir "page-break-lines")
(require 'page-break-lines)
(global-page-break-lines-mode +1)

(add-extension-dir "xterm-color")
(require 'xterm-color)
;; (setq comint-output-filter-functions
;;       (remove 'ansi-color-process-output comint-output-filter-functions))
;; (add-hook 'comint-mode-hook
;;           (lambda ()
;;             ;; Disable font-locking in this buffer to improve performance
;;             (font-lock-mode -1)
;;             ;; Prevent font-locking from being re-enabled in this buffer
;;             (make-local-variable 'font-lock-function)
;;             (setq font-lock-function (lambda (_) nil))
;;             (add-hook 'comint-preoutput-filter-functions
;;                       'xterm-color-filter nil t)))


(provide 'init-basic-packages)

;;; init-basic-packages.el ends here
