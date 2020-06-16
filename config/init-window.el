;;; init-window.el --- Init for window

;; Filename: init-window.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

;;; Code:
(defvar kj/window-parameters
  '(window-parameters . ((no-other-window . t)
                         (no-delete-other-windows . t))))

;; (setq fit-window-to-buffer-horizontally t)
;; (setq window-resize-pixelwise t)

;; (setq
;;  display-buffer-alist
;;  `(("\\*Buffer List\\*" display-buffer-in-side-window
;;     (side . top) (slot . 0) (window-height . fit-window-to-buffer)
;;     (preserve-size . (nil . t)) ,parameters)
;;    ("\\*Tags List\\*" display-buffer-in-side-window
;;     (side . right) (slot . 0) (window-width . fit-window-to-buffer)
;;     (preserve-size . (t . nil)) ,parameters)
;;    ("\\*\\(?:help\\|grep\\|Completions\\)\\*"
;;     display-buffer-in-side-window
;;     (side . bottom) (slot . -1) (preserve-size . (nil . t))
;;     ,parameters)
;;    ("\\*\\(?:shell\\|compilation\\)\\*" display-buffer-in-side-window
;;     (side . bottom) (slot . 1) (preserve-size . (nil . t))
;;     ,parameters)))

;; (setq
;;  display-buffer-alist
;;  `(("\\*\\(?:Python\\|shell\\)\\*" display-buffer-in-side-window
;;     (side . bottom) (slot . -1) (preserve-size . (nil . t)) ,parameters)
;;    ("\\*\\(?:lsp-log\\|rg\\|compilation\\|SQL: MySQL\\)\\*"
;; 	display-buffer-in-side-window
;;     (side . bottom) (slot . 1) (preserve-size . (nil . t)) ,parameters)
;;    ("\\*Buffer List\\*" display-buffer-in-side-window
;;     (side . bottom) (slot . 1) (preserve-size . (nil . t)) ,parameters)
;;    ("\\*\\(?:help\\|grep\\|Completions\\)\\*"
;;     display-buffer-in-side-window
;;     (side . bottom) (slot . 1) (preserve-size . (nil . t)) ,parameters)))

(setq
 display-buffer-alist
 `(("\\*flask server\\*" display-buffer-in-side-window
		(side . bottom) (slot . -1) (preserve-size . (nil nil)) ,kj/window-parameters)
	 ("\\*vue server\\*" display-buffer-in-side-window
		(side . bottom) (slot . 1) (preserve-size . (nil nil)) ,kj/window-parameters)))


(provide 'init-window)

;;; init-window.el ends here
