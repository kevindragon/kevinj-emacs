;;; init-ruby.el --- Init for ruby

;; Filename: init-ruby.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "ruby")

;;; Code:

(defun kj/ruby-hook ()
	(symbol-overlay-mode +1)
	(lsp-deferred))

(add-hook 'ruby-mode-hook #'kj/ruby-hook)


(provide 'init-ruby)

;;; init-ruby.el ends here
