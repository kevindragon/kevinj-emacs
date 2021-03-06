;;

;;;### (autoloads nil "../extensions/dap-mode/dap-cpptools" "../extensions/dap-mode/dap-cpptools.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-cpptools.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-cpptools" '("dap-cpptools-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-edge" "../extensions/dap-mode/dap-edge.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-edge.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-edge" '("dap-edge-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-elixir" "../extensions/dap-mode/dap-elixir.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-elixir.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-elixir" '("dap-elixir--populate-start-file-args")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-firefox" "../extensions/dap-mode/dap-firefox.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-firefox.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-firefox" '("dap-firefox-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-gdb-lldb" "../extensions/dap-mode/dap-gdb-lldb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-gdb-lldb.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-gdb-lldb" '("dap-gdb-lldb-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-go" "../extensions/dap-mode/dap-go.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-go.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-go" '("dap-go-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-hydra" "../extensions/dap-mode/dap-hydra.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-hydra.el

(autoload 'dap-hydra "../extensions/dap-mode/dap-hydra" "\
Run `dap-hydra/body'." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-hydra" '("dap-hydra")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-launch" "../extensions/dap-mode/dap-launch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-launch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-launch" '("dap-launch-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-lldb" "../extensions/dap-mode/dap-lldb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-lldb.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-lldb" '("dap-lldb-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-mode" "../extensions/dap-mode/dap-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-mode.el

(autoload 'dap-debug "../extensions/dap-mode/dap-mode" "\
Run debug configuration DEBUG-ARGS.

If DEBUG-ARGS is not specified the configuration is generated
after selecting configuration template.

\(fn DEBUG-ARGS)" t nil)

(defvar dap-mode nil "\
Non-nil if Dap mode is enabled.
See the `dap-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-mode'.")

(custom-autoload 'dap-mode "../extensions/dap-mode/dap-mode" nil)

(autoload 'dap-mode "../extensions/dap-mode/dap-mode" "\
Global minor mode for DAP mode.

If called interactively, enable Dap mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp, also
enable the mode if ARG is omitted or nil, and toggle it if ARG is
`toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(defvar dap-auto-configure-mode nil "\
Non-nil if Dap-Auto-Configure mode is enabled.
See the `dap-auto-configure-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-auto-configure-mode'.")

(custom-autoload 'dap-auto-configure-mode "../extensions/dap-mode/dap-mode" nil)

(autoload 'dap-auto-configure-mode "../extensions/dap-mode/dap-mode" "\
Auto configure dap minor mode.

If called interactively, enable Dap-Auto-Configure mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-mode" '("dap-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-mouse" "../extensions/dap-mode/dap-mouse.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-mouse.el

(defvar dap-tooltip-mode nil "\
Non-nil if Dap-Tooltip mode is enabled.
See the `dap-tooltip-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-tooltip-mode'.")

(custom-autoload 'dap-tooltip-mode "../extensions/dap-mode/dap-mouse" nil)

(autoload 'dap-tooltip-mode "../extensions/dap-mode/dap-mouse" "\
Toggle the display of GUD tooltips.

If called interactively, enable Dap-Tooltip mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-mouse" '("dap-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-netcore" "../extensions/dap-mode/dap-netcore.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-netcore.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-netcore" '("dap-netcore-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-node" "../extensions/dap-mode/dap-node.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-node.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-node" '("dap-node-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-overlays" "../extensions/dap-mode/dap-overlays.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-overlays.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-overlays" '("dap-overlays-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-php" "../extensions/dap-mode/dap-php.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-php.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-php" '("dap-php-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-pwsh" "../extensions/dap-mode/dap-pwsh.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-pwsh.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-pwsh" '("dap-pwsh-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-python" "../extensions/dap-mode/dap-python.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-python.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-python" '("dap-python-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-ruby" "../extensions/dap-mode/dap-ruby.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-ruby.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-ruby" '("dap-ruby-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-ui" "../extensions/dap-mode/dap-ui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-ui.el

(defvar dap-ui-mode nil "\
Non-nil if Dap-Ui mode is enabled.
See the `dap-ui-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-ui-mode'.")

(custom-autoload 'dap-ui-mode "../extensions/dap-mode/dap-ui" nil)

(autoload 'dap-ui-mode "../extensions/dap-mode/dap-ui" "\
Displaying DAP visuals.

If called interactively, enable Dap-Ui mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'dap-ui-breakpoints-list "../extensions/dap-mode/dap-ui" "\
List breakpoints." t nil)

(defvar dap-ui-controls-mode nil "\
Non-nil if Dap-Ui-Controls mode is enabled.
See the `dap-ui-controls-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dap-ui-controls-mode'.")

(custom-autoload 'dap-ui-controls-mode "../extensions/dap-mode/dap-ui" nil)

(autoload 'dap-ui-controls-mode "../extensions/dap-mode/dap-ui" "\
Displaying DAP visuals.

If called interactively, enable Dap-Ui-Controls mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'dap-ui-sessions "../extensions/dap-mode/dap-ui" "\
Show currently active sessions." t nil)

(autoload 'dap-ui-locals "../extensions/dap-mode/dap-ui" nil t nil)

(autoload 'dap-ui-show-many-windows "../extensions/dap-mode/dap-ui" "\
Show auto configured feature windows." t nil)

(autoload 'dap-ui-hide-many-windows "../extensions/dap-mode/dap-ui" "\
Hide all debug windows when sessions are dead." t nil)

(autoload 'dap-ui-repl "../extensions/dap-mode/dap-ui" "\
Start an adapter-specific REPL.
This could be used to evaluate JavaScript in a browser, to
evaluate python in the context of the debugee, ...." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-ui" '("dap-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-utils" "../extensions/dap-mode/dap-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-utils" '("dap-utils-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-variables" "../extensions/dap-mode/dap-variables.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-variables.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-variables" '("dap-variables-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dapui" "../extensions/dap-mode/dapui.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dapui.el

(autoload 'dapui-loaded-sources "../extensions/dap-mode/dapui" nil t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dapui" '("dapui-")))

;;;***

;;;### (autoloads nil "../extensions/dap-mode/dap-chrome" "../extensions/dap-mode/dap-chrome.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/dap-mode/dap-chrome.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/dap-mode/dap-chrome" '("dap-chrome-")))

;;;***
