;;; init-rust.el --- Init for rust

;; Filename: init-rust.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "rust-mode")
(add-extension-dir "cargo.el")
(require 'rust-mode)
(require 'cargo)
(require 'lsp-mode)

;;; Code:

(add-hook 'rust-mode-hook
          (lambda ()
	    (cargo-minor-mode 1)
	    (setq indent-tabs-mode nil)
	    (lsp-deferred)))
(setq rust-format-on-save t)


(provide 'init-rust)

;;; init-rust.el ends here
