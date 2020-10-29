;;; init-hydra.el --- Init for hydra

;; Filename: init-hydra.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "hydra")

;;; Code:
(setq kj/hydra-autoload-file
      (expand-file-name "init-hydra-autoloads.el" my-emacs-config-dir))

(defun update-hydra-autoloads ()
  "更新hydra的autoloads."
  (add-autoloads (expand-file-name "hydra" my-emacs-extension-dir)
                 kj/hydra-autoload-file))

(when (not (f-exists? kj/hydra-autoload-file))
    (update-hydra-autoloads))
(require 'init-hydra-autoloads)


(provide 'init-hydra)

;;; init-hydra.el ends here
