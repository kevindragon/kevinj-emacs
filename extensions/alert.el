;;; alert.el --- alert on my windows machine         -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Kevin Jiang

;; Author: Kevin Jiang <wenlin1988@126.com>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:
(require 'cl-lib)

(defvar *alert-id* nil)

(cl-defun alert (message &key (severity 'normal) title icon category
                      buffer mode data style persistent never-persist
                      id)
  "docstring"
  (when *alert-id*
    (w32-notification-close *alert-id*))
  (setq *alert-id* (w32-notification-notify :title title :body message)))


(provide 'alert)
;;; alert.el ends here
