;;; init-lsp-autoloads.el --- lsp autolodas          -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Kevin Jiang

;; Author: Kevin Jiang <wenlin1988@126.com>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:



(provide 'init-lsp-autoloads)
;;; init-lsp-autoloads.el ends here

;;;### (autoloads nil "../extensions/lsp-mode/lsp-clojure" "../extensions/lsp-mode/lsp-clojure.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-clojure.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-clojure" '("lsp-clojure-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-completion" "../extensions/lsp-mode/lsp-completion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-completion.el

(define-obsolete-variable-alias 'lsp-prefer-capf 'lsp-completion-provider "lsp-mode 7.0.1")

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

;;;### (autoloads nil "../extensions/lsp-mode/lsp-cpp" "../extensions/lsp-mode/lsp-cpp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-cpp.el

(autoload 'lsp-cpp-flycheck-clang-tidy-error-explainer "../extensions/lsp-mode/lsp-cpp" "\
Explain a clang-tidy ERROR by scraping documentation from llvm.org.

\(fn ERROR)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-cpp" '("lsp-cpp-flycheck-clang-tidy--")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-csharp" "../extensions/lsp-mode/lsp-csharp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-csharp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-csharp" '("lsp-csharp-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-css" "../extensions/lsp-mode/lsp-css.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-css.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-css" '("lsp-css-")))

;;;***

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

;;;### (autoloads nil "../extensions/lsp-mode/lsp-elm" "../extensions/lsp-mode/lsp-elm.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-elm.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-elm" '("lsp-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-erlang" "../extensions/lsp-mode/lsp-erlang.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-erlang.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-erlang" '("lsp-erlang-server-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-eslint" "../extensions/lsp-mode/lsp-eslint.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-eslint.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-eslint" '("lsp-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-fsharp" "../extensions/lsp-mode/lsp-fsharp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-fsharp.el

(autoload 'lsp-fsharp--workspace-load "../extensions/lsp-mode/lsp-fsharp" "\
Load all of the provided PROJECTS.

\(fn PROJECTS)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-fsharp" '("lsp-fsharp-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-gdscript" "../extensions/lsp-mode/lsp-gdscript.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-gdscript.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-gdscript" '("lsp-gdscript-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-go" "../extensions/lsp-mode/lsp-go.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-go.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-go" '("lsp-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-haxe" "../extensions/lsp-mode/lsp-haxe.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-haxe.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-haxe" '("lsp-")))

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

;;;### (autoloads nil "../extensions/lsp-mode/lsp-html" "../extensions/lsp-mode/lsp-html.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-html.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-html" '("lsp-html-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-intelephense" "../extensions/lsp-mode/lsp-intelephense.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-intelephense.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-intelephense" '("lsp-intelephense-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-json" "../extensions/lsp-mode/lsp-json.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-json.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-json" '("lsp-")))

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

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-modeline" '("lsp-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-perl" "../extensions/lsp-mode/lsp-perl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-perl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-perl" '("lsp-perl-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-protocol" "../extensions/lsp-mode/lsp-protocol.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-protocol.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-protocol" '("dash-expand:&RangeToPoint" "lsp")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-pwsh" "../extensions/lsp-mode/lsp-pwsh.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-pwsh.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-pwsh" '("lsp-pwsh-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-pyls" "../extensions/lsp-mode/lsp-pyls.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-pyls.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-pyls" '("lsp-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-rust" "../extensions/lsp-mode/lsp-rust.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-rust.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-rust" '("lsp-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-serenata" "../extensions/lsp-mode/lsp-serenata.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-serenata.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-serenata" '("lsp-serenata-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-solargraph" "../extensions/lsp-mode/lsp-solargraph.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-solargraph.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-solargraph" '("lsp-solargraph-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-sqls" "../extensions/lsp-mode/lsp-sqls.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-sqls.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-sqls" '("lsp-sqls-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-terraform" "../extensions/lsp-mode/lsp-terraform.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-terraform.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-terraform" '("lsp-terraform-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-verilog" "../extensions/lsp-mode/lsp-verilog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-verilog.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-verilog" '("lsp-clients-verilog-executable")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-vetur" "../extensions/lsp-mode/lsp-vetur.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-vetur.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-vetur" '("lsp-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-vhdl" "../extensions/lsp-mode/lsp-vhdl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-vhdl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-vhdl" '("ghdl-ls-bin-name" "hdl-checker-bin-name" "lsp-vhdl-" "vhdl-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-xml" "../extensions/lsp-mode/lsp-xml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-xml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-xml" '("lsp-xml-")))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-yaml" "../extensions/lsp-mode/lsp-yaml.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-yaml.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-yaml" '("lsp-yaml-")))

;;;***

;;;### (autoloads nil nil ("../extensions/lsp-mode/lsp.el") (0 0
;;;;;;  0 0))

;;;***

;;;### (autoloads nil "../extensions/lsp-mode/lsp-clients" "../extensions/lsp-mode/lsp-clients.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/lsp-mode/lsp-clients.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/lsp-mode/lsp-clients" '("expand-start-command" "lsp-" "parse-rf-language-server-")))

;;;***
