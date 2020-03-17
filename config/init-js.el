;;; init-js.el --- Init for js

;; Filename: init-js.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require

(add-extension-dir "json-snatcher")
(add-extension-dir "json-reformat")
(add-extension-dir "json-mode")
(require 'json-mode)
(require 'js)

;;; Code:

(setq-default js-indent-level 2)


(provide 'init-js)

;;; init-js.el ends here
