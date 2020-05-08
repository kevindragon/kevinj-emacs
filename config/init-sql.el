;;; init-sql.el --- Init for sql

;; Filename: init-sql.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

;;; Code:
(defun my/sql-interactive-mode-hook ()
	(message "my/sql-interactive-mode-hook")
	(when (string-equal system-type "windows-nt")
    (set-terminal-coding-system 'utf-8)
    (set-buffer-process-coding-system 'utf-8 'utf-8)
		(set-buffer-file-coding-system 'utf-8)))

(when (string-equal system-type "windows-nt")
	;; -C Use compression in server/client protocol.
	;; -f Continue even if we get an SQL error.
	;; -n Flush buffer after each query.
	;; -t Output in table format.
	;; --default-character-set=utf8 默认使用utf8编码
	(setq sql-mysql-options '("-C" "-f" "--auto-vertical-output" "-n"
														"--default-character-set=utf8"))
	(add-hook 'sql-interactive-mode-hook #'my/sql-interactive-mode-hook))


(provide 'init-sql)

;;; init-sql.el ends here
