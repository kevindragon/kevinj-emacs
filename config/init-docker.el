;;; init-docker.el --- Init for docker

;; Filename: init-docker.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "dockerfile-mode")
(require 'dockerfile-mode)

(add-extension-dir "tablist")
(add-extension-dir "docker.el")
(require 'init-docker-autoloads)

;;; Code:
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))


(provide 'init-docker)

;;; init-docker.el ends here
