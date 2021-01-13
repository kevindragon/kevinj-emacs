;;; init-feed.el --- Init for feed

;; Filename: init-feed.el
;; Author: Kevin Jiang <wenlin1988@126.com>
;; Maintainer: Kevin Jiang <wenlin1988@126.com>
;; Copyright (C) 2020, Kevin Jiang, all rights reserved.

;;; Require
(add-extension-dir "elfeed")
(init-autoloads (expand-file-name "elfeed" my-emacs-extension-dir)
                (expand-file-name "init-elfeed-autoloads.el" my-emacs-config-dir))
(load "init-elfeed-autoloads.el")

;;; Code:
(custom-set-variables
 '(elfeed-feeds '(("http://www.linuxeden.com/feed" linuxeden)
                  ("https://blog.google/products/search/rss" Google Search)
                  ("https://rust.cc/rss" Rust)
                  ("https://emacs-china.org/latest.rss" EmacsChina)
                  ("https://planet.emacslife.com/atom.xml" Planet Emacs)
                  "http://feedmaker.kindle4rss.com/feeds/MSRAsia.weixin.xml"
                  ("http://www.cnbeta.com/backend.php" cnBeta)
                  ("http://feeds.feedburner.com/sachac" Sachac)
                  ("http://feeds.feedburner.com/ruanyifeng" 阮一峰))))


(provide 'init-feed)

;;; init-feed.el ends here
