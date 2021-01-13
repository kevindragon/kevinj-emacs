;;; init-prog.el --- init for programming mode things  -*- lexical-binding: t; -*-

;; Copyright (C) 2021  Kevin Jiang

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

;;; Requires:
(add-extension-dir "hl-todo")
(require 'hl-todo)

;;; Code:
(setf (alist-get "TODO" hl-todo-keyword-faces "#f286c4" nil 'equal) "#f286c4")
(global-hl-todo-mode +1)
;; (hl-todo-mode +1)
(setq hl-todo-include-modes '(prog-mode))


(provide 'init-prog)
;;; init-prog.el ends here
