;;; lexisnexis.el --- Functions for LexisNexis routine work  -*- lexical-binding: t; -*-

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

;;; Require

(require 'request)
(require 'projectile)

;;; Code:

(defcustom ln/xquery-endpoint nil
  "xquery server endpoint."
  :type 'ln/xquery
  :group 'ln/xquery)

(defcustom ln/xquery-username nil
  "xquery server username."
  :type 'ln/xquery
  :group 'ln/xquery)

(defcustom ln/xquery-password nil
  "xquery server password"
  :type 'ln/xquery
  :group 'ln/xquery)

(defcustom ln/xquery-root-dir nil
  "xquery local project root dir."
  :type 'ln/xquery
  :group 'ln/xquery)

(defun ln/xquery--get-basic-auth ()
  (concat "Basic " (base64-encode-string
		    (concat ln/xquery-username ":" ln/xquery-password))))

(defun ln/xquery--server-file-path ()
  "获取服务器上面文件的路径."
  (s-replace
   (file-name-as-directory
    (concat (file-name-as-directory (projectile-project-root)) "XQuery"))
   ""
   buffer-file-name))

(defun ln/xquery--server-uri (file-path)
  "服务器上的uri."
  (concat ln/xquery-endpoint "/" file-path "?user=" user-real-login-name))

(defun ln/xquery-update-from-server (file-path)
  "从服务器上下载相应的文件到对应的路径下."
  (interactive (list (read-string
		      "update from server: "
		      (ln/xquery--server-file-path))))
  (let ((uri (ln/xquery--server-uri file-path))
	(start-time (float-time))
	(buffer (current-buffer)))
    (request
      uri
      :headers `(("Authorization" . ,(ln/xquery--get-basic-auth)))
      :success (cl-function
		(lambda (&key data &allow-other-keys)
		  (let ((p (point))
			(end-time (float-time)))
		    (message "[200] GET: %s (%f s)" uri (- end-time start-time))
		    (with-current-buffer buffer
		      (save-excursion
			(erase-buffer)
			(insert data))
		      (goto-char p)
		      (save-buffer)))))
      :error
      (cl-function (lambda (&rest args &key error-thrown &allow-other-keys)
                     (message "%s. Got error: %S" uri error-thrown)))
      ;; :complete (lambda (&rest _) (message "Finished!"))
      :status-code '((400 . (lambda (&rest _)
			      (message "%s. Got 400." uri)))
                     (418 . (lambda (&rest _)
			      (message "%s Got 418." uri)))))))

(defun ln/xquery-push-to-server (file-path)
  "从服务器上下载相应的文件到对应的路径下."
  (interactive (list (read-string
		      "push to server: "
		      (ln/xquery--server-file-path))))
  (let ((uri (ln/xquery--server-uri file-path))
	(start-time (float-time)))
    (request
      uri
      :type "PUT"
      :headers `(("Authorization" . ,(ln/xquery--get-basic-auth))
		 ("Accept-Encoding" . "application/xml")
		 ("user-agent" . ,(concat "ML Developer 2: " user-real-login-name))
		 ("Content-Type" . "text/plain; charset=UTF-8"))
      :data (buffer-string)
      :success (cl-function
		(lambda (&key data &allow-other-keys)
		  (message "received data: %s" data)
		  (message "[200] PUT: %s (%f ms)"
			   uri (- (float-time) start-time))))
      :error
      (cl-function (lambda (&rest args &key error-thrown &allow-other-keys)
                     (message "%s. Got error: %S" uri error-thrown)))
      ;; :complete (lambda (&rest _) (message "Finished!"))
      :status-code '((400 . (lambda (&rest _)
			      (message "%s. Got 400." uri)))
                     (418 . (lambda (&rest _)
			      (message "%s Got 418." uri)))))
    ))

(provide 'lexisnexis)
;;; lexisnexis.el ends here
