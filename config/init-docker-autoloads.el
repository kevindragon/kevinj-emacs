;;; init-docker-autoloads.el --- docker autoloads    -*- lexical-binding: t; -*-

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

;; ;;

;;; Code:



(provide 'init-docker-autoloads)
;;; init-docker-autoloads.el ends here

;;;### (autoloads nil "../extensions/docker.el/docker" "../extensions/docker.el/docker.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/docker.el/docker.el
 (autoload 'docker "docker" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/docker.el/docker" '("docker-read-")))

;;;***

;;;### (autoloads nil "../extensions/docker.el/docker-container"
;;;;;;  "../extensions/docker.el/docker-container.el" (0 0 0 0))
;;; Generated autoloads from ../extensions/docker.el/docker-container.el

(autoload 'docker-container-eshell "../extensions/docker.el/docker-container" "\
Open `eshell' in CONTAINER.

\(fn CONTAINER)" t nil)

(autoload 'docker-container-find-directory "../extensions/docker.el/docker-container" "\
Inside CONTAINER open DIRECTORY.

\(fn CONTAINER DIRECTORY)" t nil)

(autoload 'docker-container-find-file "../extensions/docker.el/docker-container" "\
Open FILE inside CONTAINER.

\(fn CONTAINER FILE)" t nil)

(autoload 'docker-container-shell "../extensions/docker.el/docker-container" "\
Open `shell' in CONTAINER.  When READ-SHELL is not nil, ask the user for it.

\(fn CONTAINER &optional READ-SHELL)" t nil)

(autoload 'docker-containers "../extensions/docker.el/docker-container" "\
List docker containers." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/docker.el/docker-container" '("docker-container-")))

;;;***

;;;### (autoloads nil "../extensions/docker.el/docker-core" "../extensions/docker.el/docker-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/docker.el/docker-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/docker.el/docker-core" '("docker-")))

;;;***

;;;### (autoloads nil "../extensions/docker.el/docker-image" "../extensions/docker.el/docker-image.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/docker.el/docker-image.el

(autoload 'docker-image-pull-one "../extensions/docker.el/docker-image" "\
Pull the image named NAME.  If ALL is set, use \"-a\".

\(fn NAME &optional ALL)" t nil)

(autoload 'docker-images "../extensions/docker.el/docker-image" "\
List docker images." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/docker.el/docker-image" '("docker-image-")))

;;;***

;;;### (autoloads nil "../extensions/docker.el/docker-machine" "../extensions/docker.el/docker-machine.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/docker.el/docker-machine.el

(autoload 'docker-machine-create "../extensions/docker.el/docker-machine" "\
Create a machine NAME using DRIVER.

\(fn NAME DRIVER)" t nil)

(autoload 'docker-machine-env-one "../extensions/docker.el/docker-machine" "\
Parse and set environment variables from \"docker-machine env NAME\" output.

\(fn NAME)" t nil)

(autoload 'docker-machines "../extensions/docker.el/docker-machine" "\
List docker machines." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/docker.el/docker-machine" '("docker-machine-")))

;;;***

;;;### (autoloads nil "../extensions/docker.el/docker-network" "../extensions/docker.el/docker-network.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/docker.el/docker-network.el

(autoload 'docker-networks "../extensions/docker.el/docker-network" "\
List docker networks." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/docker.el/docker-network" '("docker-network-")))

;;;***

;;;### (autoloads nil "../extensions/docker.el/docker-utils" "../extensions/docker.el/docker-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/docker.el/docker-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/docker.el/docker-utils" '("docker-utils-")))

;;;***

;;;### (autoloads nil "../extensions/docker.el/docker-volume" "../extensions/docker.el/docker-volume.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/docker.el/docker-volume.el

(autoload 'docker-volume-dired "../extensions/docker.el/docker-volume" "\
Enter `dired' in the volume named NAME.

\(fn NAME)" t nil)

(autoload 'docker-volumes "../extensions/docker.el/docker-volume" "\
List docker volumes." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/docker.el/docker-volume" '("docker-volume-")))

;;;***

;;;### (autoloads nil nil ("../extensions/docker.el/docker-faces.el")
;;;;;;  (0 0 0 0))

;;;***

;;;### (autoloads nil "../extensions/docker.el/docker-compose" "../extensions/docker.el/docker-compose.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../extensions/docker.el/docker-compose.el
 (autoload 'docker-compose "docker-compose" nil t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "../extensions/docker.el/docker-compose" '("docker-compose-")))

;;;***
