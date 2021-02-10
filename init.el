;;; init Emacs
;; author: Kevin Jiang
;; E-mail: wenlin1988@126.com

;; setup my info
(setq user-full-name "Kevin Jiang")
(setq user-mail-address "wenlin1988@126.com")

;; 加速配置。
(setq
 ;; 不要缩放frame.
 frame-inhibit-implied-resize t
 ;; 默认用最简单的模式
 ;; initial-major-mode 'fundamental-mode
 ;; 不要自动启用package
 package-enable-at-startup nil
 package--init-file-ensured t)

(defvar my-emacs-config-dir
  (file-name-as-directory (expand-file-name "config" user-emacs-directory)))
(defvar my-emacs-extension-dir
  (file-name-as-directory (expand-file-name "extensions" user-emacs-directory)))
(defvar my-emacs-theme-dir
  (file-name-as-directory (expand-file-name "themes" user-emacs-directory)))

(defvar my-workspace-dir
  (if (string-equal system-type "windows-nt")
      "C:/workspace"
    (expand-file-name "~/workspace")))

(defun add-extension-dir (dir)
  (add-to-list 'load-path (expand-file-name dir my-emacs-extension-dir)))

(defun add-theme-dir (dir)
  (add-to-list 'custom-theme-load-path (expand-file-name dir my-emacs-theme-dir))
  (add-to-list 'load-path (expand-file-name dir my-emacs-theme-dir)))

(add-to-list 'load-path my-emacs-config-dir)
(add-to-list 'load-path my-emacs-extension-dir)

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))

(let (
      ;; 加载的时候临时增大`gc-cons-threshold'以加速启动速度。
      ;; (gc-cons-threshold most-positive-fixnum)
      (gc-cons-percentage 0.6)
      ;; 清空避免加载远程文件的时候分析文件。
      (file-name-handler-alist nil))

  (with-temp-message ""                 ;抹掉插件启动的输出

    (require 'init-startup)
    (require 'init-theme)
    (require 'init-basic-packages)
    (require 'init-icons)
    ;; (require 'init-window)
    ;; (dolist (dir (f-directories my-emacs-extension-dir))
    ;;   (add-to-list 'load-path dir))

    (require 'init-benchmark)
    (require 'init-hydra)
    (require 'init-markdown-mode)
    (require 'init-spinner)

    (require 'init-smex)
    (require 'init-swiper)

    (require 'init-projectile)
    (require 'init-symbol-overlay)
    (require 'init-yasnippet)

    (require 'init-rg)
    (require 'init-flycheck)

    (require 'init-org)
    ;; (require 'init-org-roam)

    (require 'init-prog)

    (require 'init-magit)

    (require 'init-company)
    (require 'init-treemacs)
    (require 'init-lsp)
    (require 'init-xml)
    (require 'init-python)
    (require 'init-restclient)
    (require 'init-yaml)
    (require 'init-xquery)
    (require 'init-log-mode)
    (require 'init-web)
    (require 'init-typescript)
    (require 'init-java)
    (require 'init-groovy)
    (require 'init-rust)
    (require 'init-php)
    (require 'init-sql)
    (require 'init-clojure)
    (require 'init-ruby)

    (require 'init-plantuml)

    (require 'randomize-region)

    (require 'kevinj)
    (require 'lexisnexis)

    (require 'init-dashboard)
    (require 'init-hugo)
    (require 'init-auto-insert)
    (require 'init-modeline)

    (require 'init-docker)
    (require 'init-shell)
    ))

(put 'erase-buffer 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(lsp-headerline-breadcrumb-enable nil)
 '(lsp-signature-render-documentation nil)
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-position 'at-point)
 '(lsp-ui-doc-show-with-cursor nil)
 '(safe-local-variable-values
   '((project-enable-remote . t)
     (remote-path . "/data/sdb/kevin/workspace/lnip_backend_semantic_analysis")
     (remote-user . "tpo")
     (remote-host . "10.123.4.230")
     (remote-path . "")
     (remote-user . "")
     (remote-host . ""))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
