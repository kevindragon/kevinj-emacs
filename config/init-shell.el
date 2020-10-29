;;; init-shell.el --- Init for shell

;; Filename: init-shell.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require


;;; Code:

(defun run-powershell ()
  "Run powershell"
  (interactive)
  (async-shell-command
   "c:/windows/system32/WindowsPowerShell/v1.0/powershell.exe -Command -"
   nil
   nil))


(provide 'init-shell)

;;; init-shell.el ends here
