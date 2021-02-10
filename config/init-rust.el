;;; init-rust.el --- Init for rust

;; Filename: init-rust.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "rust-mode")
(add-extension-dir "cargo.el")
;; (require 'rust-mode)
(init-autoloads (expand-file-name "rust-mode" my-emacs-extension-dir)
                (expand-file-name "init-rust-autoloads.el" my-emacs-config-dir))
(load "init-rust-autoloads.el")

(require 'cargo)
(with-eval-after-load "lsp-mode"
  (add-to-list 'lsp-enabled-clients 'rust-analyzer))

;;; Code:
(defun kj/rust-actix-run-dev (port)
	"在指定端口运行开发服务器"
	(interactive (list (read-number "port:" 3000)))
	(let ((buffer (get-buffer-create "*actix dev server*")))
		(start-process "actix dev server" buffer
									 "systemfd"
									 "--no-pid" "-s"
									 (format "http::%d" port)
									 "--" "cargo" "watch" "-x" "run")
		(switch-to-buffer buffer)))

;; 在minibuffer显示签名
(cl-defmethod lsp-clients-extract-signature-on-hover
  (contents (_server-id (eql rust-analyzer)))
  (-let* (((&hash "value") contents)
          (groups (--partition-by (s-blank? it) (s-lines (s-trim value))))
          (sig_group (if (s-equals? "```rust" (car (-third-item groups)))
                         (-third-item groups)
                       (car groups)))
          (sig (--> sig_group
                    (--drop-while (s-equals? "```rust" it) it)
                    (--take-while (not (s-equals? "```" it)) it)
                    (--map (s-trim it) it)
                    (s-join " " it))))
    (lsp--render-element (concat "```rust\n" sig "\n```"))))

(add-hook 'rust-mode-hook
          (lambda ()
	    (cargo-minor-mode 1)
	    (setq indent-tabs-mode nil)
	    (lsp-deferred)))

(add-hook 'cargo-process-mode-hook
					(lambda ()
						(setq truncate-partial-width-windows nil)
						(toggle-truncate-lines 1)))

(setq rust-format-on-save t)

(with-eval-after-load "dap-mode"
  (dap-register-debug-template "Rust::GDB Run Configuration"
                               (list :type "gdb"
                                     :request "launch"
                                     :name "GDB::Run"
                                     :gdbpath "rust-gdb"
                                     :target nil
                                     :cwd nil)))


(provide 'init-rust)

;;; init-rust.el ends here
