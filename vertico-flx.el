;;; vertico-flx.el --- flx integration for vertico  -*- lexical-binding: t; -*-

;; Copyright (C) 2022  Shen, Jen-Chieh
;; Created date 2022-04-19 17:15:39

;; Author: Shen, Jen-Chieh <jcs090218@gmail.com>
;; Description: flx integration for vertico.
;; Keyword: vertico flx
;; Version: 0.1.0
;; Package-Requires: ((emacs "24.3") (flx-style "0.1.1"))
;; URL: https://github.com/jcs-elpa/vertico-flx

;; This file is NOT part of GNU Emacs.

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
;; flx integration for vertico.
;;

;;; Code:

(require 'flx-style)



(defvar jcs-minibuf--old-completion-style nil
  "Different completion style when completing using minbuffer.")

(jcs-add-hook 'minibuffer-setup-hook
  (setq jcs-minibuf--old-completion-style completion-styles
        completion-styles '(flx))
  )

(jcs-add-hook 'minibuffer-exit-hook
  (setq completion-styles jcs-minibuf--old-completion-style))

(provide 'vertico-flx)
;;; vertico-flx.el ends here
