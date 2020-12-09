;;; init-php.el --- Init for php

;; Filename: init-php.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "php-mode")
(let ((autoloads-fname "init-php-mode-autoloads.el"))
  (init-autoloads (expand-file-name "php-mode" my-emacs-extension-dir)
                  (expand-file-name autoloads-fname my-emacs-config-dir))
  (load autoloads-fname))

(add-extension-dir "phpunit.el")
(require 'phpunit)

;;; Code:
(defun kj/php-ns-dir (file-abs-path)
  (file-name-nondirectory
   (directory-file-name (file-name-directory file-abs-path))))

(defun kj/php-get-namespace (file-abs-path root ns)
  (let ((dir (directory-file-name (file-name-directory file-abs-path))))
    (if (string-prefix-p root dir)
        (progn
          (kj/php-get-namespace (directory-file-name dir)
                             root
                             (cons (kj/php-ns-dir file-abs-path) ns)))
      ns)))

(defun kj/php-namespace ()
  (interactive)
  (when (and buffer-file-name (ignore-errors (projectile-project-root)))
    (mapconcat
     (lambda (x) (capitalize x))
     (kj/php-get-namespace buffer-file-name (projectile-project-root) '())
     "\\")))

(defun kj/php-class-name ()
  (interactive)
  (when buffer-file-name
    (file-name-sans-extension
     (file-name-nondirectory buffer-file-name))))

(with-eval-after-load "lsp-mode"
  (add-to-list 'lsp-enabled-clients 'iph))
(add-hook 'php-mode-hook #'lsp-deferred)


(provide 'init-php)

;;; init-php.el ends here
