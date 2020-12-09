;;; init-web.el --- Init for web

;; Filename: init-web.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "json-snatcher")
(add-extension-dir "json-reformat")
(add-extension-dir "json-mode")
(require 'json-mode)
(require 'js)

(add-extension-dir "web-mode")
(require 'web-mode)

(with-eval-after-load "lsp-mode"
  (add-to-list 'lsp-enabled-clients 'vls))

;;; Code:
(defun kj/js-mode-hook ()
  (setq-default js-indent-level 2)
  (setq default-tab-width 2
		tab-width 2
		indent-tabs-mode nil)
  ;; (lsp-deferred)
  )

(add-hook 'js-mode-hook #'kj/js-mode-hook)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-engines-alist
      '(
        ;; ("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\.")))

(setq web-mode-script-padding 0
      web-mode-style-padding 0
			web-mode-markup-indent-offset 2
			web-mode-css-indent-offset 2
			web-mode-code-indent-offset 2
			web-mode-attr-indent-offset 2
			web-mode-enable-current-column-highlight t)

(defun kj/web-mode-hook ()
  (setq default-tab-width 2
		tab-width 2
		indent-tabs-mode nil)
  (lsp-deferred))

(add-hook 'web-mode-hook #'kj/web-mode-hook)


(provide 'init-web)

;;; init-web.el ends here
