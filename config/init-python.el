;;; init-python.el --- Init for spinner

;; Filename: init-python.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Installation:
;;
;; 把`init-python.el'添加到你的`load-path'
;; 添加`(require 'init-python)'到启动文件
;;
;; 启动Emacs之后需要使用执行`lsp-python-ms-update-server'安装`mspyls'
;;

;;; Require

(add-extension-dir "lsp-python-ms")
(setq lsp-python-ms-prefer-pyls nil)
(require 'lsp-python-ms)

(add-extension-dir "emacs-python-pytest")
(require 'python-pytest)

(add-extension-dir "emacs-ipython-notebook/lisp")
(require 'ein)

(add-extension-dir "blacken")
(require 'blacken)

(require 'pyrepl-mode)

;;; Code:

(setenv "PYTHONIOENCODING" "utf-8")

(defun my-python-hook ()
  (set (make-local-variable 'forward-sexp-function) nil)
  ;;; ipython
  ;; (setq python-shell-interpreter "ipython"
  ;;       python-shell-interpreter-args "-i --simple-prompt --profile=dev"
  ;;       python-shell-interpreter-interactive-arg "-i --simple-prompt")
  ;;; jupyter
  (setq python-shell-interpreter "jupyter"
        python-shell-interpreter-args "console --simple-prompt"
        python-shell-prompt-detect-failure-warning nil)
  (add-to-list 'python-shell-completion-native-disabled-interpreters
               "jupyter")
  ;; 启动symbol-overlay-mode
  (when (boundp symbol-overlay-mode) (symbol-overlay-mode))
  (lsp-deferred)
	(setq mode-name "ⓟ")
	;; (blacken-mode 1)
  )
(add-hook 'python-mode-hook #'my-python-hook)

;; (defun kj/python-shell-send-setup-code ()
;; 	(message "add python-shell-first-prompt-hook")
;;   (let ((process (python-shell-get-process)))
;; 		(python-shell-send-string "print('start')" process)
;;     (python-shell-send-string "%load_ext autoreload" process)
;; 		(python-shell-send-string "%autoreload 2" process)
;; 		(python-shell-send-string "print('start')" process)))
;; (add-hook 'python-shell-first-prompt-hook #'kj/python-shell-send-setup-code)

(defun kj/inferior-python-mode-hook ()
  (when (string-equal system-type "windows-nt")
    (set-terminal-coding-system 'utf-8)
    (set-buffer-process-coding-system 'utf-8 'utf-8)
		(set-buffer-file-coding-system 'utf-8)
		(let ((process (python-shell-get-process)))
			(python-shell-send-string-no-output "%load_ext autoreload" process)
			(python-shell-send-string-no-output "%autoreload 2" process))
	))
(add-hook 'inferior-python-mode-hook #'kj/inferior-python-mode-hook)

(provide 'init-python)

;;; init-python.el ends here
