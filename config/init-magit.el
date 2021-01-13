;;; init-magit.el --- Init for magit

;; Filename: init-magit.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

(add-extension-dir "with-editor")
(add-extension-dir "magit/lisp")
(add-extension-dir "magit-popup")

;; (require 'init-magit-autoloads)

(let ((autoloads-fname "init-magit-autoloads.el"))
  (init-autoloads (expand-file-name "magit/lisp" my-emacs-extension-dir)
                  (expand-file-name autoloads-fname my-emacs-config-dir))
  (load autoloads-fname))

;;; Code:

(global-set-key (kbd "M-n g") 'magit-status)
(modify-coding-system-alist 'file "\\.git/COMMIT_EDITMSG\\'" 'utf-8)
(modify-coding-system-alist 'file "COMMIT_EDITMSG\\'" 'utf-8)


(provide 'init-magit)

;;; init-magit.el ends here
