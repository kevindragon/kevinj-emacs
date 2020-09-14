;;; init-org-roam-autoloads.el --- a                 -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Kevin Jiang

;; Author: Kevin Jiang <wenlin1988@126.com>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:



(provide 'init-org-roam-autoloads)
;;; init-org-roam-autoloads.el ends here

;;;### (autoloads nil "../extensions/org-roam/org-roam" "../extensions/org-roam/org-roam.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/org-roam/org-roam.el

(defvar org-roam-mode nil "\
Non-nil if Org-Roam mode is enabled.
See the `org-roam-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `org-roam-mode'.")

(custom-autoload 'org-roam-mode "../extensions/org-roam/org-roam" nil)

(autoload 'org-roam-mode "../extensions/org-roam/org-roam" "\
Minor mode for Org-roam.

This mode sets up several hooks, to ensure that the cache is updated on file
changes, renames and deletes. It is also in charge of graceful termination of
the database connection.

When called interactively, toggle `org-roam-mode'. with prefix
ARG, enable `org-roam-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `org-roam-mode' if ARG is omitted,
nil, or positive. If ARG is `toggle', toggle `org-roam-mode'.
Otherwise, behave as if called interactively.

\(fn &optional ARG)" t nil)

(defalias 'org-roam 'org-roam-buffer-toggle-display)

(autoload 'org-roam-diagnostics "../extensions/org-roam/org-roam" "\
Collect and print info for `org-roam' issues." t nil)

(autoload 'org-roam-find-file "../extensions/org-roam/org-roam" "\
Find and open an Org-roam file.
INITIAL-PROMPT is the initial title prompt.
COMPLETIONS is a list of completions to be used instead of
`org-roam--get-title-path-completions`.
FILTER-FN is the name of a function to apply on the candidates
which takes as its argument an alist of path-completions.  See
`org-roam--get-title-path-completions' for details.

\(fn &optional INITIAL-PROMPT COMPLETIONS FILTER-FN)" t nil)

(autoload 'org-roam-find-directory "../extensions/org-roam/org-roam" "\
Find and open `org-roam-directory'." t nil)

(autoload 'org-roam-find-ref "../extensions/org-roam/org-roam" "\
Find and open an Org-roam file from a ref.
ARG is used to forward interactive calls to
`org-roam--get-ref-path-completions'
FILTER can either be a string or a function:
- If it is a string, it should be the type of refs to include as
candidates (e.g. \"cite\" ,\"website\" ,etc.)
- If it is a function, it should be the name of a function that
takes three arguments: the type, the ref, and the file of the
current candidate.  It should return t if that candidate is to be
included as a candidate.

\(fn ARG &optional FILTER)" t nil)

(autoload 'org-roam-random-note "../extensions/org-roam/org-roam" "\
Find a random Org-roam file." t nil)

(autoload 'org-roam-insert "../extensions/org-roam/org-roam" "\
Find an Org-roam file, and insert a relative org link to it at point.
Return selected file if it exists.
If LOWERCASE, downcase the title before insertion.
COMPLETIONS is a list of completions to be used instead of
`org-roam--get-title-path-completions`.
FILTER-FN is the name of a function to apply on the candidates
which takes as its argument an alist of path-completions.
If DESCRIPTION is provided, use this as the link label.  See
`org-roam--get-title-path-completions' for details.

\(fn &optional LOWERCASE COMPLETIONS FILTER-FN DESCRIPTION)" t nil)

(autoload 'org-roam-insert-immediate "../extensions/org-roam/org-roam" "\
Find an Org-roam file, and insert a relative org link to it at point.
This variant of `org-roam-insert' inserts the link immediately by
using the template in `org-roam-capture-immediate-template'. The
interactive ARG and ARGS are passed to `org-roam-insert'.
See `org-roam-insert' for details.

\(fn ARG &rest ARGS)" t nil)

(autoload 'org-roam-find-file-immediate "../extensions/org-roam/org-roam" "\
Find and open an Org-roam file.
This variant of `org-roam-find-file' uses the template in
`org-roam-capture-immediate-template', avoiding the capture
process. The interactive ARG and ARGS are passed to
`org-roam-find-file'. See `org-roam-find-file' for details.

\(fn ARG &rest ARGS)" t nil)

(autoload 'org-roam-jump-to-index "../extensions/org-roam/org-roam" "\
Find the index file in `org-roam-directory'.
The path to the index can be defined in `org-roam-index-file'.
Otherwise, the function will look in your `org-roam-directory'
for a note whose title is 'Index'.  If it does not exist, the
command will offer you to create one." t nil)

(autoload 'org-roam-switch-to-buffer "../extensions/org-roam/org-roam" "\
Switch to an existing Org-roam buffer." t nil)

(autoload 'org-roam-version "../extensions/org-roam/org-roam" "\
Return `org-roam' version.
Interactively, or when MESSAGE is non-nil, show in the echo area.

\(fn &optional MESSAGE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/org-roam/org-roam" '("org-roam-")))

;;;***

;;;### (autoloads nil "../extensions/org-roam/org-roam-capture" "../extensions/org-roam/org-roam-capture.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/org-roam/org-roam-capture.el

(autoload 'org-roam-capture "../extensions/org-roam/org-roam-capture" "\
Launches an `org-capture' process for a new or existing note.
This uses the templates defined at `org-roam-capture-templates'." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/org-roam/org-roam-capture" '("org-roam-capture-")))

;;;***

;;;### (autoloads nil "../extensions/org-roam/org-roam-completion"
;;;;;;  "../extensions/org-roam/org-roam-completion.el" (0 0 0 0))
;;; Generated autoloads from ../extensions/org-roam/org-roam-completion.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/org-roam/org-roam-completion" '("org-roam-completion-")))

;;;***

;;;### (autoloads nil "../extensions/org-roam/org-roam-dailies" "../extensions/org-roam/org-roam-dailies.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/org-roam/org-roam-dailies.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/org-roam/org-roam-dailies" '("org-roam-dailies-")))

;;;***

;;;### (autoloads nil "../extensions/org-roam/org-roam-db" "../extensions/org-roam/org-roam-db.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/org-roam/org-roam-db.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/org-roam/org-roam-db" '("org-roam-db")))

;;;***

;;;### (autoloads nil "../extensions/org-roam/org-roam-dev" "../extensions/org-roam/org-roam-dev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/org-roam/org-roam-dev.el

(autoload 'org-roam-dev-mode "../extensions/org-roam/org-roam-dev" "\
Minor mode for setting the dev environment of Org-roam.

If called interactively, enable Org-Roam-Dev mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "../extensions/org-roam/org-roam-doctor" "../extensions/org-roam/org-roam-doctor.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/org-roam/org-roam-doctor.el

(autoload 'org-roam-doctor "../extensions/org-roam/org-roam-doctor" "\
Perform a check on the current buffer to ensure cleanliness.
If CHECKALL, run the check for all Org-roam files.

\(fn &optional CHECKALL)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/org-roam/org-roam-doctor" '("org-roam-doctor-")))

;;;***

;;;### (autoloads nil "../extensions/org-roam/org-roam-graph" "../extensions/org-roam/org-roam-graph.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/org-roam/org-roam-graph.el

(autoload 'org-roam-graph "../extensions/org-roam/org-roam-graph" "\
Build and possibly display a graph for FILE from NODE-QUERY.
If FILE is nil, default to current buffer's file name.
ARG may be any of the following values:
  - nil       show the graph.
  - `\\[universal-argument]'     show the graph for FILE.
  - `\\[universal-argument]' N   show the graph for FILE limiting nodes to N steps.
  - `\\[universal-argument] \\[universal-argument]' build the graph.
  - `\\[universal-argument]' -   build the graph for FILE.
  - `\\[universal-argument]' -N  build the graph for FILE limiting nodes to N steps.

\(fn &optional ARG FILE NODE-QUERY)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/org-roam/org-roam-graph" '("org-roam-graph-")))

;;;***

;;;### (autoloads nil "../extensions/org-roam/org-roam-macs" "../extensions/org-roam/org-roam-macs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/org-roam/org-roam-macs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/org-roam/org-roam-macs" '("org-roam-")))

;;;***

;;;### (autoloads nil "../extensions/org-roam/org-roam-protocol"
;;;;;;  "../extensions/org-roam/org-roam-protocol.el" (0 0 0 0))
;;; Generated autoloads from ../extensions/org-roam/org-roam-protocol.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/org-roam/org-roam-protocol" '("org-roam-protocol-open-")))

;;;***

;;;### (autoloads nil nil ("../extensions/org-roam/org-roam-compat.el")
;;;;;;  (0 0 0 0))

;;;***

;;;### (autoloads nil "../extensions/org-roam/org-roam-buffer" "../extensions/org-roam/org-roam-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/org-roam/org-roam-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/org-roam/org-roam-buffer" '("org-roam-buffer")))

;;;***
