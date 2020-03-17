;;; init-lsp.el --- Init for lsp-mode

;; Filename: init-lsp.el
;; Description: Init for lsp-mode
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.
;; Created: 2020-03-16 28:48:57
;; Version: 0.1
;; Last-Updated: 2020-03-16 28:48:57
;;           By: Kevin Jiang
;; Keywords:
;; Compatibility: GNU Emacs GNU Emacs 27.0.60
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Init for ivy
;;

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
