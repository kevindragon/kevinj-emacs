;;; init-clojure.el --- Init for clojure

;; Filename: init-clojure.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "clojure-mode")
(require 'clojure-mode)

(add-extension-dir "a.el")
(add-extension-dir "parseedn")
(add-extension-dir "parseclj")
(add-extension-dir "sesman")

(add-extension-dir "cider")
(load "init-cider-autoloads" t t)

;;; Code:
(defun kj/clojure-hook ()
  ;; 启动symbol-overlay-mode
  (when (boundp symbol-overlay-mode) (symbol-overlay-mode)))

(add-hook 'clojure-mode-hook #'kj/clojure-hook)


(provide 'init-clojure)

;;; init-clojure.el ends here
