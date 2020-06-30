;;; init-model-line.el --- Init for model-line

;; Filename: init-model-line.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "diminish.el")
(require 'diminish)

;;; Code:
;; (setq-default mode-line-format
;;               '(mode-line-front-space
;;                 mode-line-mule-info
;;                 mode-line-client
;;                 mode-line-modified
;;                 mode-line-remote
;;                 mode-line-frame-identification
;;                 mode-line-buffer-identification
;;                 " "
;;                 mode-line-position
;;                 " "
;;                 mode-line-modes
;;                 mode-line-misc-info
;;                 (vc-mode vc-mode)
;;                 mode-line-end-spaces))
;; (force-mode-line-update)
(dolist (m '(yas-minor-mode symbol-overlay-mode eldoc-mode which-key-mode
             ivy-mode projectile-mode company-mode auto-revert-mode
             abbrev-mode))
  (when (bound-and-true-p m)
    (diminish m "")))


(provide 'init-model-line)

;;; init-model-line.el ends here
