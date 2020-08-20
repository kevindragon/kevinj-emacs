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

(defvar my-emacs-config-dir (concat user-emacs-directory "/config/"))
(defvar my-emacs-extension-dir (concat user-emacs-directory "/extensions/"))
(defvar my-emacs-theme-dir (concat user-emacs-directory "/themes/"))

(defvar my-workspace-dir
  (if (string-equal system-type "windows-nt")
      "C:/workspace"
    (expand-file-name "~/workspace")))

(defun add-extension-dir (dir)
  (add-to-list 'load-path (concat my-emacs-extension-dir dir)))

(defun add-theme-dir (dir)
  (add-to-list 'custom-theme-load-path (concat my-emacs-theme-dir dir))
  (add-to-list 'load-path (concat my-emacs-theme-dir dir)))

(add-to-list 'load-path my-emacs-config-dir)
(add-to-list 'load-path my-emacs-extension-dir)

(let (
      ;; 加载的时候临时增大`gc-cons-threshold'以加速启动速度。
      (gc-cons-threshold most-positive-fixnum)
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

    (require 'init-magit)

    (require 'init-company)
    (require 'init-lsp)
    (require 'init-xml)
    (require 'init-python)
    (require 'init-restclient)
    (require 'init-yaml)
    (require 'init-xquery)
    (require 'init-log-mode)
    (require 'init-web)
    (require 'init-java)
    (require 'init-groovy)
    (require 'init-rust)
    (require 'init-php)
    (require 'init-sql)
    (require 'init-clojure)
    (require 'init-ruby)

    (require 'init-treemacs)
    (require 'init-plantuml)

    (require 'randomize-region)

    (require 'kevinj)
    (require 'lexisnexis)

    (require 'init-dashboard)
    (require 'init-hugo)
    (require 'init-auto-insert)
    (require 'init-modeline)
    ))
(put 'erase-buffer 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
