;;; init-rust.el --- Init for rust

;; Filename: init-rust.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "rust-mode")
(autoload 'rust-mode "rust-mode" nil t)

;;; Code:

(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))
(setq rust-format-on-save t)


(provide 'init-rust)

;;; init-rust.el ends here
