;;

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-classes"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-classes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-classes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-classes" '("ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-contents-api"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-contents-api.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-contents-api.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-contents-api" '("*ein:content-hierarchy*" "ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-core"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-core.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-core" '("*ein:" "ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-dev"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-dev.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-dev.el

(autoload 'ein:dev-start-debug "../extensions/emacs-ipython-notebook/lisp/ein-dev" "\
Start logging a bunch of stuff." t nil)

(autoload 'ein:dev-stop-debug "../extensions/emacs-ipython-notebook/lisp/ein-dev" "\
Inverse of `ein:dev-start-debug'.
Impossible to maintain because it needs to match start." t nil)

(autoload 'ein:dev-bug-report-template "../extensions/emacs-ipython-notebook/lisp/ein-dev" "\
Open a buffer with bug report template." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-dev" '("ein:dev-")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-events"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-events.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-events.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-events" '("ein:events-")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-file"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-file.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-file.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-file" '("*ein:file-buffername-template*" "ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-gat"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-gat.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-gat.el

(autoload 'ein:gat-run-local-batch "../extensions/emacs-ipython-notebook/lisp/ein-gat" "\


\(fn &optional REFRESH)" t nil)

(autoload 'ein:gat-run-local "../extensions/emacs-ipython-notebook/lisp/ein-gat" "\


\(fn &optional REFRESH)" t nil)

(autoload 'ein:gat-run-remote-batch "../extensions/emacs-ipython-notebook/lisp/ein-gat" "\


\(fn &optional REFRESH)" t nil)

(autoload 'ein:gat-run-remote "../extensions/emacs-ipython-notebook/lisp/ein-gat" "\


\(fn &optional REFRESH)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-gat" '("ein:gat-")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-ipdb"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-ipdb.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-ipdb.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-ipdb" '("*ein:ipdb-sessions*" "ein:ipdb-")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-ipynb-mode"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-ipynb-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-ipynb-mode.el

(autoload 'ein:ipynb-mode "../extensions/emacs-ipython-notebook/lisp/ein-ipynb-mode" "\
A simple mode for ipynb file.

\\{ein:ipynb-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.ipynb\\'" . ein:ipynb-mode))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-jupyter"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-jupyter.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-jupyter.el

(autoload 'ein:jupyter-crib-token "../extensions/emacs-ipython-notebook/lisp/ein-jupyter" "\
Shell out to jupyter for its credentials knowledge.  Return list of (PASSWORD TOKEN).

\(fn URL-OR-PORT)" nil nil)

(autoload 'ein:jupyter-crib-running-servers "../extensions/emacs-ipython-notebook/lisp/ein-jupyter" "\
Shell out to jupyter for running servers." nil nil)

(autoload 'ein:jupyter-server-start "../extensions/emacs-ipython-notebook/lisp/ein-jupyter" "\
Start SERVER-COMMAND with `--notebook-dir' NOTEBOOK-DIRECTORY.

Login after connection established unless NO-LOGIN-P is set.
LOGIN-CALLBACK takes two arguments, the buffer created by
`ein:notebooklist-open--finish', and the url-or-port argument
of `ein:notebooklist-open*'.

With \\[universal-argument] prefix arg, prompt the user for the
server command.

\(fn SERVER-COMMAND NOTEBOOK-DIRECTORY &optional NO-LOGIN-P LOGIN-CALLBACK PORT)" t nil)

(defalias 'ein:run 'ein:jupyter-server-start)

(defalias 'ein:stop 'ein:jupyter-server-stop)

(autoload 'ein:jupyter-server-stop "../extensions/emacs-ipython-notebook/lisp/ein-jupyter" "\


\(fn &optional ASK-P URL-OR-PORT)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-jupyter" '("*ein:jupyter-server-" "ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-kernel"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-kernel.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-kernel.el

(defalias 'ein:kernel-url-or-port 'ein:$kernel-url-or-port)

(defalias 'ein:kernel-id 'ein:$kernel-kernel-id)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-kernel" '("ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-kernelinfo"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-kernelinfo.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-kernelinfo.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-kernelinfo" '("ein:kernelinfo")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-kill-ring"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-kill-ring.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-kill-ring.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-kill-ring" '("ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-log"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-log.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-log.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-log" '("ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-markdown-mode"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-markdown-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-markdown-mode.el

(autoload 'ein:markdown-mode "../extensions/emacs-ipython-notebook/lisp/ein-markdown-mode" "\
Major mode for editing ein:markdown files.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-markdown-mode" '("defun-markdown-" "ein:markdown")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-node"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-node.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-node.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-node" '("ein:node-")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-notebook"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-notebook.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-notebook.el

(defalias 'ein:notebook-name 'ein:$notebook-notebook-name)

(autoload 'ein:notebook-jump-to-opened-notebook "../extensions/emacs-ipython-notebook/lisp/ein-notebook" "\
List all opened notebook buffers and switch to one that the user selects.

\(fn NOTEBOOK)" t nil)

(autoload 'ein:notebook-open "../extensions/emacs-ipython-notebook/lisp/ein-notebook" "\
Returns notebook at URL-OR-PORT/PATH.

Note that notebook sends for its contents and won't have them right away.

After the notebook is opened, CALLBACK is called as::

  (funcall CALLBACK notebook created)

where `created' indicates a new notebook or an existing one.

\(fn URL-OR-PORT PATH &optional KERNELSPEC CALLBACK ERRBACK NO-POP)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-notebook" '("*ein:notebook--pending-query*" "ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-notebooklist"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-notebooklist.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-notebooklist.el

(autoload 'ein:notebooklist-reload "../extensions/emacs-ipython-notebook/lisp/ein-notebooklist" "\
Reload current Notebook list.

\(fn &optional NBLIST RESYNC CALLBACK)" t nil)

(autoload 'ein:notebooklist-new-notebook "../extensions/emacs-ipython-notebook/lisp/ein-notebooklist" "\


\(fn URL-OR-PORT KERNELSPEC &optional CALLBACK NO-POP RETRY EXPLICIT-PATH)" t nil)

(autoload 'ein:notebooklist-new-notebook-with-name "../extensions/emacs-ipython-notebook/lisp/ein-notebooklist" "\
Upon notebook-open, rename the notebook, then funcall CALLBACK.

\(fn URL-OR-PORT KERNELSPEC NAME &optional CALLBACK NO-POP)" t nil)

(autoload 'ein:notebooklist-list-paths "../extensions/emacs-ipython-notebook/lisp/ein-notebooklist" "\
Return all files of CONTENT-TYPE for all sessions

\(fn &optional CONTENT-TYPE)" nil nil)

(autoload 'ein:notebooklist-load "../extensions/emacs-ipython-notebook/lisp/ein-notebooklist" "\
Load notebook list but do not pop-up the notebook list buffer.

For example, if you want to load notebook list when Emacs starts,
add this in the Emacs initialization file::

  (add-to-hook 'after-init-hook 'ein:notebooklist-load)

or even this (if you want fast Emacs start-up)::

  ;; load notebook list if Emacs is idle for 3 sec after start-up
  (run-with-idle-timer 3 nil #'ein:notebooklist-load)

\(fn &optional URL-OR-PORT)" nil nil)

(autoload 'ein:notebooklist-open "../extensions/emacs-ipython-notebook/lisp/ein-notebooklist" "\
This is now an alias for `ein:notebooklist-login'.

\(fn URL-OR-PORT CALLBACK)" t nil)

(defalias 'ein:login 'ein:notebooklist-login)

(autoload 'ein:notebooklist-login "../extensions/emacs-ipython-notebook/lisp/ein-notebooklist" "\
Deal with security before main entry of ein:notebooklist-open*.

CALLBACK takes two arguments, the buffer created by ein:notebooklist-open--success
and the url-or-port argument of ein:notebooklist-open*.

\(fn URL-OR-PORT CALLBACK &optional COOKIE-NAME COOKIE-CONTENT TOKEN)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-notebooklist" '("ein:" "generate-breadcrumbs" "render-")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-notification"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-notification.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-notification.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-notification" '("ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-output-area"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-output-area.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-output-area.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-output-area" '("ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-pager"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-pager.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-pager.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-pager" '("ein:pager-")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-process"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-process.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-process.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-process" '("ein:process-")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-python-send"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-python-send.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-python-send.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-python-send" '("ein:python-send-")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-pytools"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-pytools.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-pytools.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-pytools" '("ein:pytools-jump-")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-query"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-query.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-query.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-query" '("ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-scratchsheet"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-scratchsheet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-scratchsheet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-scratchsheet" '("ein:scratchsheet")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-shared-output"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-shared-output.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-shared-output.el

(autoload 'ein:shared-output-pop-to-buffer "../extensions/emacs-ipython-notebook/lisp/ein-shared-output" "\
Open shared output buffer." t nil)

(autoload 'ein:shared-output-show-code-cell-at-point "../extensions/emacs-ipython-notebook/lisp/ein-shared-output" "\
Show code cell at point in shared-output buffer.
It is useful when the output of the cell at point is truncated.
See also `ein:cell-max-num-outputs'." t nil)

(autoload 'ein:shared-output-eval-string "../extensions/emacs-ipython-notebook/lisp/ein-shared-output" "\
Entry to `ein:cell-execute-internal' from the shared output cell.

\(fn KERNEL CODE &rest ARGS)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-shared-output" '("*ein:shared-output*" "ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-traceback"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-traceback.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-traceback.el

(autoload 'ein:tb-show "../extensions/emacs-ipython-notebook/lisp/ein-traceback" "\
Show full traceback in traceback viewer." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-traceback" '("ein:t")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-utils"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-utils" '("ein:")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-websocket"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-websocket.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-websocket.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-websocket" '("ein:" "fix-request-netscape-cookie-parse")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-worksheet"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-worksheet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-worksheet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-worksheet" '("ein:" "hof-add")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ob-ein"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ob-ein.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ob-ein.el

(when (featurep 'org) (let* ((orig (get 'org-babel-load-languages 'custom-type)) (orig-cdr (cdr orig)) (choices (plist-get orig-cdr :key-type))) (push '(const :tag "Ein" ein) (nthcdr 1 choices)) (put 'org-babel-load-languages 'custom-type (cons (car orig) (plist-put orig-cdr :key-type choices)))))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ob-ein" '("*ob-ein-sentinel*" "ob-ein-")))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/poly-ein"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/poly-ein.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/poly-ein.el
 (autoload 'poly-ein-mode "poly-ein")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/poly-ein" '("pm-" "poly-ein-")))

;;;***

;;;### (autoloads nil nil ("../extensions/emacs-ipython-notebook/lisp/ein-completer.el"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-pkg.el" "../extensions/emacs-ipython-notebook/lisp/ein.el")
;;;;;;  (0 0 0 0))

;;;***

;;;### (autoloads nil "../extensions/emacs-ipython-notebook/lisp/ein-cell"
;;;;;;  "../extensions/emacs-ipython-notebook/lisp/ein-cell.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from ../extensions/emacs-ipython-notebook/lisp/ein-cell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/emacs-ipython-notebook/lisp/ein-cell" '("ein:")))

;;;***
