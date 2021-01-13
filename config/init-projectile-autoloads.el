;;

;;;### (autoloads nil "../extensions/projectile/projectile" "../extensions/projectile/projectile.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/projectile/projectile.el

(autoload 'projectile-version "../extensions/projectile/projectile" "\
Get the Projectile version as string.

If called interactively or if SHOW-VERSION is non-nil, show the
version in the echo area and the messages buffer.

The returned string includes both, the version from package.el
and the library version, if both a present and different.

If the version number could not be determined, signal an error,
if called interactively, or if SHOW-VERSION is non-nil, otherwise
just return nil.

\(fn &optional SHOW-VERSION)" t nil)

(autoload 'projectile-invalidate-cache "../extensions/projectile/projectile" "\
Remove the current project's files from `projectile-projects-cache'.

With a prefix argument PROMPT prompts for the name of the project whose cache
to invalidate.

\(fn PROMPT)" t nil)

(autoload 'projectile-purge-file-from-cache "../extensions/projectile/projectile" "\
Purge FILE from the cache of the current project.

\(fn FILE)" t nil)

(autoload 'projectile-purge-dir-from-cache "../extensions/projectile/projectile" "\
Purge DIR from the cache of the current project.

\(fn DIR)" t nil)

(autoload 'projectile-cache-current-file "../extensions/projectile/projectile" "\
Add the currently visited file to the cache." t nil)

(autoload 'projectile-discover-projects-in-directory "../extensions/projectile/projectile" "\
Discover any projects in DIRECTORY and add them to the projectile cache.
This function is not recursive and only adds projects with roots
at the top level of DIRECTORY.

\(fn DIRECTORY)" t nil)

(autoload 'projectile-discover-projects-in-search-path "../extensions/projectile/projectile" "\
Discover projects in `projectile-project-search-path'.
Invoked automatically when `projectile-mode' is enabled." t nil)

(autoload 'projectile-switch-to-buffer "../extensions/projectile/projectile" "\
Switch to a project buffer." t nil)

(autoload 'projectile-switch-to-buffer-other-window "../extensions/projectile/projectile" "\
Switch to a project buffer and show it in another window." t nil)

(autoload 'projectile-switch-to-buffer-other-frame "../extensions/projectile/projectile" "\
Switch to a project buffer and show it in another frame." t nil)

(autoload 'projectile-display-buffer "../extensions/projectile/projectile" "\
Display a project buffer in another window without selecting it." t nil)

(autoload 'projectile-project-buffers-other-buffer "../extensions/projectile/projectile" "\
Switch to the most recently selected buffer project buffer.
Only buffers not visible in windows are returned." t nil)

(autoload 'projectile-multi-occur "../extensions/projectile/projectile" "\
Do a `multi-occur' in the project's buffers.
With a prefix argument, show NLINES of context.

\(fn &optional NLINES)" t nil)

(autoload 'projectile-find-other-file "../extensions/projectile/projectile" "\
Switch between files with the same name but different extensions.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

\(fn &optional FLEX-MATCHING)" t nil)

(autoload 'projectile-find-other-file-other-window "../extensions/projectile/projectile" "\
Switch between files with the same name but different extensions in other window.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

\(fn &optional FLEX-MATCHING)" t nil)

(autoload 'projectile-find-other-file-other-frame "../extensions/projectile/projectile" "\
Switch between files with the same name but different extensions in other frame.
With FLEX-MATCHING, match any file that contains the base name of current file.
Other file extensions can be customized with the variable `projectile-other-file-alist'.

\(fn &optional FLEX-MATCHING)" t nil)

(autoload 'projectile-find-file-dwim "../extensions/projectile/projectile" "\
Jump to a project's files using completion based on context.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file-dwim' still switches to \"projectile/projectile.el\" immediately
 because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file-dwim' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename like
 \"projectile/a\", a list of files with character 'a' in that directory is presented.

- If it finds nothing, display a list of all files in project for selecting.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-file-dwim-other-window "../extensions/projectile/projectile" "\
Jump to a project's files using completion based on context in other window.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file-dwim-other-window' still switches to \"projectile/projectile.el\"
immediately because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file-dwim-other-window' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename
like \"projectile/a\", a list of files with character 'a' in that directory
is presented.

- If it finds nothing, display a list of all files in project for selecting.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-file-dwim-other-frame "../extensions/projectile/projectile" "\
Jump to a project's files using completion based on context in other frame.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

If point is on a filename, Projectile first tries to search for that
file in project:

- If it finds just a file, it switches to that file instantly.  This works even
if the filename is incomplete, but there's only a single file in the current project
that matches the filename at point.  For example, if there's only a single file named
\"projectile/projectile.el\" but the current filename is \"projectile/proj\" (incomplete),
`projectile-find-file-dwim-other-frame' still switches to \"projectile/projectile.el\"
immediately because this is the only filename that matches.

- If it finds a list of files, the list is displayed for selecting.  A list of
files is displayed when a filename appears more than one in the project or the
filename at point is a prefix of more than two files in a project.  For example,
if `projectile-find-file-dwim-other-frame' is executed on a filepath like \"projectile/\", it lists
the content of that directory.  If it is executed on a partial filename
like \"projectile/a\", a list of files with character 'a' in that directory
is presented.

- If it finds nothing, display a list of all files in project for selecting.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-file "../extensions/projectile/projectile" "\
Jump to a project's file using completion.
With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-file-other-window "../extensions/projectile/projectile" "\
Jump to a project's file using completion and show it in another window.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-file-other-frame "../extensions/projectile/projectile" "\
Jump to a project's file using completion and show it in another frame.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-toggle-project-read-only "../extensions/projectile/projectile" "\
Toggle project read only." t nil)

(autoload 'projectile-find-dir "../extensions/projectile/projectile" "\
Jump to a project's directory using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-dir-other-window "../extensions/projectile/projectile" "\
Jump to a project's directory in other window using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-dir-other-frame "../extensions/projectile/projectile" "\
Jump to a project's directory in other frame using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-test-file "../extensions/projectile/projectile" "\
Jump to a project's test file using completion.

With a prefix arg INVALIDATE-CACHE invalidates the cache first.

\(fn &optional INVALIDATE-CACHE)" t nil)

(autoload 'projectile-find-related-file-other-window "../extensions/projectile/projectile" "\
Open related file in other window." t nil)

(autoload 'projectile-find-related-file-other-frame "../extensions/projectile/projectile" "\
Open related file in other frame." t nil)

(autoload 'projectile-find-related-file "../extensions/projectile/projectile" "\
Open related file." t nil)

(autoload 'projectile-related-files-fn-groups "../extensions/projectile/projectile" "\
Generate a related-files-fn which relates as KIND for files in each of GROUPS.

\(fn KIND GROUPS)" nil nil)

(autoload 'projectile-related-files-fn-extensions "../extensions/projectile/projectile" "\
Generate a related-files-fn which relates as KIND for files having EXTENSIONS.

\(fn KIND EXTENSIONS)" nil nil)

(autoload 'projectile-related-files-fn-test-with-prefix "../extensions/projectile/projectile" "\
Generate a related-files-fn which relates tests and impl for files with EXTENSION based on TEST-PREFIX.

\(fn EXTENSION TEST-PREFIX)" nil nil)

(autoload 'projectile-related-files-fn-test-with-suffix "../extensions/projectile/projectile" "\
Generate a related-files-fn which relates tests and impl for files with EXTENSION based on TEST-SUFFIX.

\(fn EXTENSION TEST-SUFFIX)" nil nil)

(autoload 'projectile-project-info "../extensions/projectile/projectile" "\
Display info for current project." t nil)

(autoload 'projectile-find-implementation-or-test-other-window "../extensions/projectile/projectile" "\
Open matching implementation or test file in other window." t nil)

(autoload 'projectile-find-implementation-or-test-other-frame "../extensions/projectile/projectile" "\
Open matching implementation or test file in other frame." t nil)

(autoload 'projectile-toggle-between-implementation-and-test "../extensions/projectile/projectile" "\
Toggle between an implementation file and its test file." t nil)

(autoload 'projectile-grep "../extensions/projectile/projectile" "\
Perform rgrep in the project.

With a prefix ARG asks for files (globbing-aware) which to grep in.
With prefix ARG of `-' (such as `M--'), default the files (without prompt),
to `projectile-grep-default-files'.

With REGEXP given, don't query the user for a regexp.

\(fn &optional REGEXP ARG)" t nil)

(autoload 'projectile-ag "../extensions/projectile/projectile" "\
Run an ag search with SEARCH-TERM in the project.

With an optional prefix argument ARG SEARCH-TERM is interpreted as a
regular expression.

\(fn SEARCH-TERM &optional ARG)" t nil)

(autoload 'projectile-ripgrep "../extensions/projectile/projectile" "\
Run a Ripgrep search with `SEARCH-TERM' at current project root.

With an optional prefix argument ARG SEARCH-TERM is interpreted as a
regular expression.

\(fn SEARCH-TERM &optional ARG)" t nil)

(autoload 'projectile-regenerate-tags "../extensions/projectile/projectile" "\
Regenerate the project's [e|g]tags." t nil)

(autoload 'projectile-find-tag "../extensions/projectile/projectile" "\
Find tag in project." t nil)

(autoload 'projectile-run-command-in-root "../extensions/projectile/projectile" "\
Invoke `execute-extended-command' in the project's root." t nil)

(autoload 'projectile-run-shell-command-in-root "../extensions/projectile/projectile" "\
Invoke `shell-command' in the project's root." t nil)

(autoload 'projectile-run-async-shell-command-in-root "../extensions/projectile/projectile" "\
Invoke `async-shell-command' in the project's root." t nil)

(autoload 'projectile-run-gdb "../extensions/projectile/projectile" "\
Invoke `gdb' in the project's root." t nil)

(autoload 'projectile-run-shell "../extensions/projectile/projectile" "\
Invoke `shell' in the project's root.

Switch to the project specific shell buffer if it already exists.

Use a prefix argument ARG to indicate creation of a new process instead.

\(fn &optional ARG)" t nil)

(autoload 'projectile-run-eshell "../extensions/projectile/projectile" "\
Invoke `eshell' in the project's root.

Switch to the project specific eshell buffer if it already exists.

Use a prefix argument ARG to indicate creation of a new process instead.

\(fn &optional ARG)" t nil)

(autoload 'projectile-run-ielm "../extensions/projectile/projectile" "\
Invoke `ielm' in the project's root.

Switch to the project specific ielm buffer if it already exists.

Use a prefix argument ARG to indicate creation of a new process instead.

\(fn &optional ARG)" t nil)

(autoload 'projectile-run-term "../extensions/projectile/projectile" "\
Invoke `term' in the project's root.

Switch to the project specific term buffer if it already exists.

Use a prefix argument ARG to indicate creation of a new process instead.

\(fn &optional ARG)" t nil)

(autoload 'projectile-run-vterm "../extensions/projectile/projectile" "\
Invoke `vterm' in the project's root.

Switch to the project specific term buffer if it already exists.

Use a prefix argument ARG to indicate creation of a new process instead.

\(fn &optional ARG)" t nil)

(autoload 'projectile-replace "../extensions/projectile/projectile" "\
Replace literal string in project using non-regexp `tags-query-replace'.

With a prefix argument ARG prompts you for a directory on which
to run the replacement.

\(fn &optional ARG)" t nil)

(autoload 'projectile-replace-regexp "../extensions/projectile/projectile" "\
Replace a regexp in the project using `tags-query-replace'.

With a prefix argument ARG prompts you for a directory on which
to run the replacement.

\(fn &optional ARG)" t nil)

(autoload 'projectile-kill-buffers "../extensions/projectile/projectile" "\
Kill project buffers.

The buffer are killed according to the value of
`projectile-kill-buffers-filter'." t nil)

(autoload 'projectile-save-project-buffers "../extensions/projectile/projectile" "\
Save all project buffers." t nil)

(autoload 'projectile-dired "../extensions/projectile/projectile" "\
Open `dired' at the root of the project." t nil)

(autoload 'projectile-dired-other-window "../extensions/projectile/projectile" "\
Open `dired'  at the root of the project in another window." t nil)

(autoload 'projectile-dired-other-frame "../extensions/projectile/projectile" "\
Open `dired' at the root of the project in another frame." t nil)

(autoload 'projectile-vc "../extensions/projectile/projectile" "\
Open `vc-dir' at the root of the project.

For git projects `magit-status-internal' is used if available.
For hg projects `monky-status' is used if available.

If PROJECT-ROOT is given, it is opened instead of the project
root directory of the current buffer file.  If interactively
called with a prefix argument, the user is prompted for a project
directory to open.

\(fn &optional PROJECT-ROOT)" t nil)

(autoload 'projectile-recentf "../extensions/projectile/projectile" "\
Show a list of recently visited files in a project." t nil)

(autoload 'projectile-configure-project "../extensions/projectile/projectile" "\
Run project configure command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

\(fn ARG)" t nil)

(autoload 'projectile-compile-project "../extensions/projectile/projectile" "\
Run project compilation command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

\(fn ARG)" t nil)

(autoload 'projectile-test-project "../extensions/projectile/projectile" "\
Run project test command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

\(fn ARG)" t nil)

(autoload 'projectile-install-project "../extensions/projectile/projectile" "\
Run project install command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

\(fn ARG)" t nil)

(autoload 'projectile-package-project "../extensions/projectile/projectile" "\
Run project package command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

\(fn ARG)" t nil)

(autoload 'projectile-run-project "../extensions/projectile/projectile" "\
Run project run command.

Normally you'll be prompted for a compilation command, unless
variable `compilation-read-command'.  You can force the prompt
with a prefix ARG.

\(fn ARG)" t nil)

(autoload 'projectile-repeat-last-command "../extensions/projectile/projectile" "\
Run last projectile external command.

External commands are: `projectile-configure-project',
`projectile-compile-project', `projectile-test-project',
`projectile-install-project', `projectile-package-project',
and `projectile-run-project'.

If the prefix argument SHOW_PROMPT is non nil, the command can be edited.

\(fn SHOW-PROMPT)" t nil)

(autoload 'projectile-switch-project "../extensions/projectile/projectile" "\
Switch to a project we have visited before.
Invokes the command referenced by `projectile-switch-project-action' on switch.
With a prefix ARG invokes `projectile-commander' instead of
`projectile-switch-project-action.'

\(fn &optional ARG)" t nil)

(autoload 'projectile-switch-open-project "../extensions/projectile/projectile" "\
Switch to a project we have currently opened.
Invokes the command referenced by `projectile-switch-project-action' on switch.
With a prefix ARG invokes `projectile-commander' instead of
`projectile-switch-project-action.'

\(fn &optional ARG)" t nil)

(autoload 'projectile-find-file-in-directory "../extensions/projectile/projectile" "\
Jump to a file in a (maybe regular) DIRECTORY.

This command will first prompt for the directory the file is in.

\(fn &optional DIRECTORY)" t nil)

(autoload 'projectile-find-file-in-known-projects "../extensions/projectile/projectile" "\
Jump to a file in any of the known projects." t nil)

(autoload 'projectile-cleanup-known-projects "../extensions/projectile/projectile" "\
Remove known projects that don't exist anymore." t nil)

(autoload 'projectile-clear-known-projects "../extensions/projectile/projectile" "\
Clear both `projectile-known-projects' and `projectile-known-projects-file'." t nil)

(autoload 'projectile-remove-known-project "../extensions/projectile/projectile" "\
Remove PROJECT from the list of known projects.

\(fn &optional PROJECT)" t nil)

(autoload 'projectile-remove-current-project-from-known-projects "../extensions/projectile/projectile" "\
Remove the current project from the list of known projects." t nil)

(autoload 'projectile-add-known-project "../extensions/projectile/projectile" "\
Add PROJECT-ROOT to the list of known projects.

\(fn PROJECT-ROOT)" t nil)

(autoload 'projectile-ibuffer "../extensions/projectile/projectile" "\
Open an IBuffer window showing all buffers in the current project.

Let user choose another project when PROMPT-FOR-PROJECT is supplied.

\(fn PROMPT-FOR-PROJECT)" t nil)

(autoload 'projectile-commander "../extensions/projectile/projectile" "\
Execute a Projectile command with a single letter.
The user is prompted for a single character indicating the action to invoke.
The `?' character describes then
available actions.

See `def-projectile-commander-method' for defining new methods." t nil)

(autoload 'projectile-browse-dirty-projects "../extensions/projectile/projectile" "\
Browse dirty version controlled projects.

With a prefix argument, or if CACHED is non-nil, try to use the cached
dirty project list.

\(fn &optional CACHED)" t nil)

(autoload 'projectile-edit-dir-locals "../extensions/projectile/projectile" "\
Edit or create a .dir-locals.el file of the project." t nil)

(defvar projectile-mode nil "\
Non-nil if Projectile mode is enabled.
See the `projectile-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `projectile-mode'.")

(custom-autoload 'projectile-mode "../extensions/projectile/projectile" nil)

(autoload 'projectile-mode "../extensions/projectile/projectile" "\
Minor mode to assist project management and navigation.

When called interactively, toggle `projectile-mode'.  With prefix
ARG, enable `projectile-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `projectile-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `projectile-mode'.
Otherwise behave as if called interactively.

\\{projectile-mode-map}

\(fn &optional ARG)" t nil)

(define-obsolete-function-alias 'projectile-global-mode 'projectile-mode "1.0")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/projectile/projectile" '("??" "compilation-find-file-projectile-find-compilation-buffer" "def-projectile-commander-method" "delete-file-projectile-remove-from-cache" "projectile-")))

;;;***
