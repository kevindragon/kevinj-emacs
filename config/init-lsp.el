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

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-lsp RET
;;

;;; Change log:
;;

;;; Acknowledgements:
;;
;;
;;

;;; TODO
;;
;;
;;

;;; Require

(add-extension-dir "lsp-mode")
(add-extension-dir "lsp-ui")

(require 'lsp-ui)
(require 'lsp-mode)

;;; Code:

(dolist (hook (list
               ;; 'js-mode-hook
               ;; 'ruby-mode-hook
               'rust-mode-hook
               ))
  (add-hook hook '(lambda ()
                    (lsp)
                    )))

(custom-set-variables
 ;; '(lsp-signature-render-documentation nil)
 ;; '(lsp-ui-doc-alignment 'frame)
 ;; '(lsp-ui-doc-delay 0.2)
 '(lsp-ui-doc-position 'at-point))


(provide 'init-lsp)

;;; init-lsp.el ends here
