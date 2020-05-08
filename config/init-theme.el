;;; init-theme.el --- Init for theme

;; Filename: init-theme.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-theme-dir "dracula")

;;; Code:

(defun custom-default-theme ()
  (custom-set-faces
   '(font-lock-comment-face ((t (:foreground "light slate gray"))))
   '(fringe ((t (:background "ghost white"))))
   '(mmm-default-submode-face ((t (:background "white"))))
   '(window-divider ((t (:foreground "gray30"))))))

(defun reset-theme ()
  "恢复默认的主题"
  (interactive)
  (mapcar #'disable-theme custom-enabled-themes)
  (custom-default-theme))

;; (custom-default-theme)
(load-theme 'dracula t)


(provide 'init-theme)

;;; init-theme.el ends here
