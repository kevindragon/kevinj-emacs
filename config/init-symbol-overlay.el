;;; init-symbol-overlay.el --- Init for symbol-overlay

;; Filename: init-symbol-overlay.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "symbol-overlay")
(require 'symbol-overlay)

;;; Code:

(global-set-key (kbd "M-i") 'symbol-overlay-put)
(global-set-key (kbd "M-n") 'symbol-overlay-switch-forward)
(global-set-key (kbd "M-p") 'symbol-overlay-switch-backward)


(provide 'init-symbol-overlay)

;;; init-symbol-overlay.el ends here
