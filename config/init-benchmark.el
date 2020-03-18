;;; init-benchmark.el --- Init for benchmark

;; Filename: init-benchmark.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "benchmark-init-el")
(require 'benchmark-init)
(require 'benchmark-init-modes)

;;; Code:

;; To disable collection of benchmark data after init is done.
(add-hook 'after-init-hook 'benchmark-init/deactivate)


(provide 'init-benchmark)

;;; init-benchmark.el ends here
