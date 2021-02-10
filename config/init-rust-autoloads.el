;;; init-rust-autoloads.el --- rust autoloads        -*- lexical-binding: t; -*-

;; Copyright (C) 2021  Kevin Jiang

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

;; ;;

;;; Code:



(provide 'init-rust-autoloads)
;;; init-rust-autoloads.el ends here

;;;### (autoloads nil "../extensions/rust-mode/rust-mode" "../extensions/rust-mode/rust-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/rust-mode/rust-mode.el

(autoload 'rust-mode "../extensions/rust-mode/rust-mode" "\
Major mode for Rust code.

\\{rust-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(autoload 'rust-dbg-wrap-or-unwrap "../extensions/rust-mode/rust-mode" "\
Either remove or add the dbg! macro." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/rust-mode/rust-mode" '("cargo-compilation-regexps" "rust")))

;;;***

;;;### (autoloads nil "../extensions/rust-mode/rust-mode-tests" "../extensions/rust-mode/rust-mode-tests.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/rust-mode/rust-mode-tests.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/rust-mode/rust-mode-tests" '("rust-" "test-")))

;;;***
