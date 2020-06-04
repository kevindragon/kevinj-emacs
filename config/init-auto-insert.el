;;; init-auto-insert.el --- Init for auto-insert

;; Filename: init-auto-insert.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

(require 'yasnippet)
(require 'autoinsert)

;;; Code:

(defun kj/autoinsert-yas-expand()
  "Replace text in yasnippet template."
  (yas-expand-snippet (buffer-string) (point-min) (point-max)))

(eval-after-load 'autoinsert
  (lambda ()
    ;; Don't want to be prompted before insertion:
    (setq auto-insert-query nil)
    (setq auto-insert-directory (locate-user-emacs-file "templates"))
    (add-hook 'find-file-hook 'auto-insert)
    (auto-insert-mode 1)
    (yas-minor-mode-on)
    (define-auto-insert "\\.php$" ["template.php" kj/autoinsert-yas-expand])
    (define-auto-insert "\\.py$" ["template.py" kj/autoinsert-yas-expand])
		(define-auto-insert "\\.vue$" ["template.vue" kj/autoinsert-yas-expand])))


(provide 'init-auto-insert)

;;; init-auto-insert.el ends here
