;;; init-startup.el --- Config load when startup

;; Filename: init-startup.el
;; Description: Config load when startup
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2014, Kevin Jiang, all rights reserved.

;;; replace yes no to y/n
(fset 'yes-or-no-p 'y-or-n-p)

;;; coding system
(prefer-coding-system 'cp950)
(prefer-coding-system 'gb2312)
(prefer-coding-system 'cp936)
(prefer-coding-system 'gb18030)
(prefer-coding-system 'utf-16)
(prefer-coding-system 'utf-8)
(prefer-coding-system 'utf-8-dos)
(prefer-coding-system 'utf-8-unix)

;; (when (eq system-type 'windows-nt)
;;   ;; disable CJK coding/encoding (Chinese/Japanese/Korean characters)
;;   (setq utf-translate-cjk-mode nil)
;;   (set-language-environment 'utf-8)
;;   (setq locale-coding-system 'utf-8)
;;   (set-default-coding-systems 'utf-8)
;;   (set-terminal-coding-system 'utf-8)
;;   (set-selection-coding-system 'utf-16-le)
;;   (prefer-coding-system 'utf-8)
;;   )

(setenv "LANG" "zh_CN.UTF-8")

;;; set location on frame title
(defun frame-title-string ()
  "Return the file name of current buffer, using ~ if under home directory"
  (let ((fname (or (buffer-file-name (current-buffer)) (buffer-name)))
        (max-len 100))
    (when (string-match (getenv "HOME") fname)
      (setq fname (replace-match "~" t t fname)))
    (if (> (length fname) max-len)
        (setq fname (concat "..." (substring fname (- (length fname) max-len)))))
    fname))
(setq frame-title-format '("Kevin@"(:eval (frame-title-string))))

;; 不生成~结尾的文件
(setq make-backup-files nil)

;; 不需要toolbar和menu bar
(tool-bar-mode 0)
(menu-bar-mode 0)
;; 要不滚动条
(scroll-bar-mode 0)
;; 保留上次打开的位置
(save-place-mode 1)
;; tab size
(setq default-tab-width 4)
(setq tab-width 4)
;; 括号高亮匹配显示
(show-paren-mode 1)
;; 自动插入配对的括号
(electric-pair-mode 1)
;; 在mode line显示行和列
(line-number-mode 1)
(column-number-mode 1)

(defalias 'list-buffers 'ibuffer)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq-default kill-ring-max 200000)

(defun newline-and-indent ()
  (interactive)
  (move-end-of-line 1)
  (newline)
  (indent-for-tab-command))
(global-set-key (kbd "C-S-o") 'newline-and-indent)

;; window split horizontal and vertical toggle
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
         (next-win-buffer (window-buffer (next-window)))
         (this-win-edges (window-edges (selected-window)))
         (next-win-edges (window-edges (next-window)))
         (this-win-2nd (not (and (<= (car this-win-edges)
                     (car next-win-edges))
                     (<= (cadr this-win-edges)
                     (cadr next-win-edges)))))
         (splitter
          (if (= (car this-win-edges)
             (car (window-edges (next-window))))
          'split-window-horizontally
        'split-window-vertically)))
    (delete-other-windows)
    (let ((first-win (selected-window)))
      (funcall splitter)
      (if this-win-2nd (other-window 1))
      (set-window-buffer (selected-window) this-win-buffer)
      (set-window-buffer (next-window) next-win-buffer)
      (select-window first-win)
      (if this-win-2nd (other-window 1))))))
(global-set-key (kbd "C-x |") 'toggle-window-split)

;; maximum frame
(global-set-key (kbd "C-x w m") 'toggle-frame-maximized)


(provide 'init-startup)

;;; init-startup.el ends here
