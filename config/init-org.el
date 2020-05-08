;;; init-org.el --- Init for org

;; Filename: init-org.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

(require 'org)
(when (string-equal system-type "windows-nt")
  (setq org-directory "c:/workspace/orgs")
  (setq org-agenda-files '("c:/workspace/orgs/todo.org"))
  (setq org-default-notes-file (concat org-directory "/notes.org")))
(setq org-hide-leading-stars t)         ;使星号不可见
(setq org-enable-table-editor 1)        ;启用内建的电子表格
(setq org-log-done t)                   ;日志记录
;; (setq org-log-done '(done))             ;日志记录类型
;; (setq org-log-done 'time)
(setq org-agenda-include-diary t)       ;集成日历
(setq org-startup-truncated t)          ;默认换行

(provide 'init-org)

;;; init-org.el ends here
