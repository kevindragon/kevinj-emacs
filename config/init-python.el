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

;;; Require

;; (add-extension-dir "lsp-python-ms")
;; (setq lsp-python-ms-prefer-pyls nil)
;; (require 'lsp-python-ms)
;; (with-eval-after-load "lsp-mode"
;;   (add-to-list 'lsp-disabled-clients 'pyls)
;;   (add-to-list 'lsp-enabled-clients 'mspyls))

(add-extension-dir "lsp-pyright")
(require 'lsp-pyright)
(with-eval-after-load "lsp-mode"
  (add-to-list 'lsp-disabled-clients 'pyls)
  (add-to-list 'lsp-enabled-clients 'pyright))

(with-eval-after-load "dap-mode"
  (require 'dap-python))

(add-extension-dir "emacs-python-pytest")
(require 'python-pytest)

(add-extension-dir "anaphora")
(add-extension-dir "emacs-ipython-notebook/lisp")
(let ((autoloads-fname "init-ein-autoloads.el"))
  (init-autoloads (expand-file-name "emacs-ipython-notebook/lisp"
                                    my-emacs-extension-dir)
                  (expand-file-name autoloads-fname my-emacs-config-dir))
  (load autoloads-fname))

(require 'pyrepl-mode)

(require 'dash)
(require 'projectile)

;;; Code:

(setenv "PYTHONIOENCODING" "utf-8")

(defun my-python-hook ()
  (set (make-local-variable 'forward-sexp-function) nil)
  ;;; ipython
  (setq python-shell-interpreter "ipython"
        python-shell-interpreter-args "-i --simple-prompt --profile=dev"
        python-shell-interpreter-interactive-arg "-i --simple-prompt")
  ;;; jupyter
  ;; (setq python-shell-interpreter "jupyter"
  ;;       python-shell-interpreter-args "console --simple-prompt"
  ;;       python-shell-prompt-detect-failure-warning nil)
  ;; (add-to-list 'python-shell-completion-native-disabled-interpreters
  ;;              "jupyter")
  ;; 启动symbol-overlay-mode
  (when (boundp symbol-overlay-mode) (symbol-overlay-mode))
  (lsp-deferred)

	(setq mode-name "ⓟ")
  ;; set python shell as dedicated mode
  ;; (elpy-shell-toggle-dedicated-shell 1)
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

(defun kj/run-python (filename &optional args)
  "以args参数运行给定的Python文件."
  (interactive "fFilename: \nsArgs: ")
  (let* ((default-directory (projectile-project-root))
         (filename (file-relative-name filename default-directory))
		 (buf-name (format "*python[%s/%s]*" (projectile-project-name) filename))
		 (buffer (get-buffer-create buf-name)))
	(with-current-buffer buffer
	  (comint-mode)
	  (goto-char (point-max))
	  (insert (format "working dir: %s\n" default-directory))
      (insert (format "cmd: python -u %s %s\n" filename args))
      (display-buffer-in-side-window buffer '((side . bottom) (slot . 0)))
	  (set-terminal-coding-system 'utf-8)
	  (set-buffer-file-coding-system 'utf-8))
	(start-process buf-name buffer "python" "-u" filename args)))

(defun kj/display-python-shell (buf-name)
  "在side window ((side . bottom) (slot . 1))显示Python shell."
  (interactive (list (completing-read
                      "Select a buffer:"
                      (-filter (lambda (x) (string-prefix-p "*Python " x))
                               (mapcar 'buffer-name (buffer-list))))))
  (let ((buf (get-buffer buf-name)))
    (display-buffer-in-side-window buf '((side . bottom) (slot . 1)))
    (switch-to-buffer-other-window buf)))

(global-set-key (kbd "<f3>") 'window-toggle-side-windows)

;;; ein
(setq ein:output-area-inlined-images t)

(provide 'init-python)

;;; init-python.el ends here
