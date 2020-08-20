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
(add-extension-dir "lsp-ui")
(add-extension-dir "dap-mode")

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


(provide 'init-lsp)

;;; init-lsp.el ends here
