;;

;;;### (autoloads nil "../extensions/lsp-mode/lsp-diagnostics" "../extensions/lsp-mode/lsp-diagnostics.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-diagnostics.el

(define-obsolete-variable-alias 'lsp-diagnostic-package 'lsp-diagnostics-provider "lsp-mode 7.0.1")

(define-obsolete-variable-alias 'lsp-flycheck-default-level 'lsp-diagnostics-flycheck-default-level "lsp-mode 7.0.1")

(autoload 'lsp-diagnostics--enable "../extensions/lsp-mode/lsp-diagnostics" "\
Enable LSP checker support." nil nil)

(autoload 'lsp-diagnostics-mode "../extensions/lsp-mode/lsp-diagnostics" "\
Toggle LSP diagnostics integration.

If called interactively, enable Lsp-Diagnostics mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(add-hook 'lsp-configure-hook (lambda nil (when lsp-auto-configure (lsp-diagnostics--enable))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-diagnostics" '("lsp-diagnostics-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-headerline" "../extensions/lsp-mode/lsp-headerline.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-headerline.el

(autoload 'lsp-headerline-breadcrumb-mode "../extensions/lsp-mode/lsp-headerline" "\
Toggle breadcrumb on headerline.

If called interactively, enable Lsp-Headerline-Breadcrumb mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'lsp-breadcrumb-go-to-symbol "../extensions/lsp-mode/lsp-headerline" "\
Go to the symbol on breadcrumb at SYMBOL-POSITION.

\(fn SYMBOL-POSITION)" t nil)

(autoload 'lsp-breadcrumb-narrow-to-symbol "../extensions/lsp-mode/lsp-headerline" "\
Narrow to the symbol range on breadcrumb at SYMBOL-POSITION.

\(fn SYMBOL-POSITION)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-headerline" '("lsp-headerline-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-lens" "../extensions/lsp-mode/lsp-lens.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-lens.el

(autoload 'lsp-lens-show "../extensions/lsp-mode/lsp-lens" "\
Display lenses in the buffer." t nil)

(autoload 'lsp-lens-hide "../extensions/lsp-mode/lsp-lens" "\
Delete all lenses." t nil)

(autoload 'lsp-lens-mode "../extensions/lsp-mode/lsp-lens" "\
Toggle code-lens overlays.

If called interactively, enable Lsp-Lens mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'lsp-avy-lens "../extensions/lsp-mode/lsp-lens" "\
Click lsp lens using `avy' package." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-lens" '("lsp-lens-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-mode" "../extensions/lsp-mode/lsp-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-mode.el
(put 'lsp-enable-file-watchers 'safe-local-variable #'booleanp)
(put 'lsp-file-watch-threshold 'safe-local-variable (lambda (i) (or (numberp i) (not i))))

(autoload 'lsp "../extensions/lsp-mode/lsp-mode" "\
Entry point for the server startup.
When ARG is t the lsp mode will start new language server even if
there is language server which can handle current language. When
ARG is nil current file will be opened in multi folder language
server if there is such. When `lsp' is called with prefix
argument ask the user to select which language server to start.

\(fn &optional ARG)" t nil)

(autoload 'lsp-deferred "../extensions/lsp-mode/lsp-mode" "\
Entry point that defers server startup until buffer is visible.
`lsp-deferred' will wait until the buffer is visible before invoking `lsp'.
This avoids overloading the server with many files when starting Emacs." nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-mode" '("lsp-" "make-lsp-client" "when-lsp-workspace" "with-lsp-workspace")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-modeline" "../extensions/lsp-mode/lsp-modeline.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-modeline.el

(define-obsolete-variable-alias 'lsp-diagnostics-modeline-scope 'lsp-modeline-diagnostics-scope "lsp-mode 7.0.1")

(autoload 'lsp-modeline-code-actions-mode "../extensions/lsp-mode/lsp-modeline" "\
Toggle code actions on modeline.

If called interactively, enable Lsp-Modeline-Code-Actions mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(define-obsolete-function-alias 'lsp-diagnostics-modeline-mode 'lsp-modeline-diagnostics-mode "lsp-mode 7.0.1")

(autoload 'lsp-modeline-diagnostics-mode "../extensions/lsp-mode/lsp-modeline" "\
Toggle diagnostics modeline.

If called interactively, enable Lsp-Modeline-Diagnostics mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'lsp-modeline-workspace-status-mode "../extensions/lsp-mode/lsp-modeline" "\
Toggle workspace status on modeline.

If called interactively, enable Lsp-Modeline-Workspace-Status
mode if ARG is positive, and disable it if ARG is zero or
negative.  If called from Lisp, also enable the mode if ARG is
omitted or nil, and toggle it if ARG is `toggle'; disable the
mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-modeline" '("lsp-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-protocol" "../extensions/lsp-mode/lsp-protocol.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-protocol.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-protocol" '("dash-expand:&RangeToPoint" "lsp")))

;;;***

;;;### (autoloads nil nil ("../extensions/lsp-mode/lsp.el") (0 0
;;;;;;  0 0))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-completion" "../extensions/lsp-mode/lsp-completion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-completion.el

(define-obsolete-variable-alias 'lsp-prefer-capf 'lsp-completion-provider "lsp-mode 7.0.1")

(define-obsolete-variable-alias 'lsp-enable-completion-at-point 'lsp-completion-enable "lsp-mode 7.0.1")

(autoload 'lsp-completion-at-point "../extensions/lsp-mode/lsp-completion" "\
Get lsp completions." nil nil)

(autoload 'lsp-completion--enable "../extensions/lsp-mode/lsp-completion" "\
Enable LSP completion support." nil nil)

(autoload 'lsp-completion-mode "../extensions/lsp-mode/lsp-completion" "\
Toggle LSP completion support.

If called interactively, enable Lsp-Completion mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(add-hook 'lsp-configure-hook (lambda nil (when (and lsp-auto-configure lsp-completion-enable) (lsp-completion--enable))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-completion" '("lsp-completion-")))

;;;***
