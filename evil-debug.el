;;; evil-debug.el --- Evil bindings for the debugger -*- lexical-binding: t -*-

;; Copyright (C) 2017 Pierre Neidhardt

;; Author: Pierre Neidhardt <ambrevar@gmail.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/jojojames/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, debug, tools

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published
;; by the Free Software Foundation; either version 3, or (at your
;; option) any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Evil bindings for the debugger.

;;; Code:

(require 'evil)
(require 'debug)

(defun evil-debug-setup ()
  (evil-set-initial-state 'debugger-mode 'motion)

  (evil-define-key 'motion debugger-mode-map
    ;; motion
    (kbd "<tab>") 'forward-button
    (kbd "S-<tab>") 'backward-button
    (kbd "<return>") 'debug-help-follow
    (kbd "SPC") 'next-line

    "R" 'debugger-record-expression
    "c" 'debugger-continue
    "d" 'debugger-step-through
    "x" 'debugger-eval-expression
    "J" 'debugger-jump

    "gl" 'debugger-list-functions
    "gb" 'debugger-frame
    "r" 'debugger-return-value
    "u" 'debugger-frame-clear
    "p" 'debugger-toggle-locals

    ;; quit
    "q" 'top-level
    "ZQ" 'evil-quit
    "ZZ" 'top-level))

(provide 'evil-debug)
;;; evil-debug.el ends here
