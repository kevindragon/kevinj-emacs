;;; init-hydra-autoloads.el --- hydra autoloads      -*- lexical-binding: t; -*-

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



(provide 'init-hydra-autoloads)
;;; init-hydra-autoloads.el ends here
;;

;;;### (autoloads nil "../extensions/hydra/hydra" "../extensions/hydra/hydra.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/hydra/hydra.el

(autoload 'defhydra "../extensions/hydra/hydra" "\
Create a Hydra - a family of functions with prefix NAME.

NAME should be a symbol, it will be the prefix of all functions
defined here.

BODY has the format:

    (BODY-MAP BODY-KEY &rest BODY-PLIST)

DOCSTRING will be displayed in the echo area to identify the
Hydra.  When DOCSTRING starts with a newline, special Ruby-style
substitution will be performed by `hydra--format'.

Functions are created on basis of HEADS, each of which has the
format:

    (KEY CMD &optional HINT &rest PLIST)

BODY-MAP is a keymap; `global-map' is used quite often.  Each
function generated from HEADS will be bound in BODY-MAP to
BODY-KEY + KEY (both are strings passed to `kbd'), and will set
the transient map so that all following heads can be called
though KEY only.  BODY-KEY can be an empty string.

CMD is a callable expression: either an interactive function
name, or an interactive lambda, or a single sexp (it will be
wrapped in an interactive lambda).

HINT is a short string that identifies its head.  It will be
printed beside KEY in the echo erea if `hydra-is-helpful' is not
nil.  If you don't even want the KEY to be printed, set HINT
explicitly to nil.

The heads inherit their PLIST from BODY-PLIST and are allowed to
override some keys.  The keys recognized are :exit, :bind, and :column.
:exit can be:

- nil (default): this head will continue the Hydra state.
- t: this head will stop the Hydra state.

:bind can be:
- nil: this head will not be bound in BODY-MAP.
- a lambda taking KEY and CMD used to bind a head.

:column is a string that sets the column for all subsequent heads.

It is possible to omit both BODY-MAP and BODY-KEY if you don't
want to bind anything.  In that case, typically you will bind the
generated NAME/body command.  This command is also the return
result of `defhydra'.

\(fn NAME BODY &optional DOCSTRING &rest HEADS)" nil t)

(function-put 'defhydra 'lisp-indent-function 'defun)

(function-put 'defhydra 'doc-string-elt '3)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/hydra/hydra" '("defhydra" "hydra-")))

;;;***

;;;### (autoloads nil "../extensions/hydra/hydra-ox" "../extensions/hydra/hydra-ox.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/hydra/hydra-ox.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/hydra/hydra-ox" '("hydra-ox")))

;;;***

;;;### (autoloads nil "../extensions/hydra/hydra-test" "../extensions/hydra/hydra-test.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/hydra/hydra-test.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/hydra/hydra-test" '("hydra-" "remap")))

;;;***

;;;### (autoloads nil "../extensions/hydra/lv" "../extensions/hydra/lv.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/hydra/lv.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/hydra/lv" '("lv-")))

;;;***
;;
;;;### (autoloads nil "../extensions/hydra/hydra-examples" "../extensions/hydra/hydra-examples.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/hydra/hydra-examples.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/hydra/hydra-examples" '("hydra-" "org-agenda-cts" "whitespace-mode")))

;;;***
