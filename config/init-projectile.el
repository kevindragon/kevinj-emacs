;;; init-projectile.el --- Init for projectile

;; Filename: init-projectile.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

(add-extension-dir "projectile")
(require 'init-projectile-autoloads)
;; (require 'projectile)

;;; Code:

(projectile-mode +1)
;; (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; (custom-set-variables
;;  ;; 忽略更多的目录
;;  '(projectile-globally-ignored-directories
;; 	 (append projectile-globally-ignored-directories
;; 					 '("node_modules" ".vscode" ".git" ".pytest_cache"
;; 						 ".log" "logs"))))


(provide 'init-projectile)

;;; init-projectile.el ends here
