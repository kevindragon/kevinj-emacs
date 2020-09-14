;;; init-lsp.el --- Init for lsp-mode

;; Filename: init-lsp.el
;; Description: Init for lsp-mode
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Installation:
;;
;; Put init-lsp.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-lsp)
;;

;;; Require

(add-extension-dir "lsp-mode")
(add-extension-dir "dap-mode")
(add-extension-dir "lsp-ui")

(require 'init-lsp-autoloads)
(require 'init-dap-autoloads)
(require 'lsp-ui)

;;; Code:

(custom-set-variables
 ;; '(lsp-signature-render-documentation nil)
 ;; '(lsp-ui-doc-alignment 'frame)
 ;; '(lsp-ui-doc-position 'at-point)
 ;; '(lsp-ui-doc-include-signature t)
 ;; '(lsp-ui-sideline-show-diagnostics nil)
 ;; '(lsp-enable-file-watchers t)
 ;; '(lsp-file-watch-threshold 200)
 '(lsp-keep-workspace-alive nil)
 )

(add-hook 'dap-stopped-hook
          (lambda (arg) (call-interactively #'dap-hydra)))

(dap-mode 1)

;; The modes below are optional

(dap-ui-mode 1)
;; enables mouse hover support
(dap-tooltip-mode 1)
;; use tooltips for mouse hover
;; if it is not enabled `dap-mode' will use the minibuffer.
(tooltip-mode 1)
;; displays floating panel with debug buttons
;; requies emacs 26+
(dap-ui-controls-mode 1)


(provide 'init-lsp)

;;; init-lsp.el ends here
