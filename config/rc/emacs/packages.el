
(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")
                  ("gnu" . "http://elpa.gnu.org/packages/")
                  ("melpa" . "http://melpa.org/packages/")
                  ("org" . "http://orgmode.org/elpa/")))
  (add-to-list 'package-archives source t))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    org org-plus-contrib 
    evil evil-tabs
;    auto-complete auctex color-theme-sanityinc-tomorrow company dash
;    expand-region htmlize ido-ubiquitous ido-vertical-mode iy-go-to-char jedi
;    magit main-line markdown-mode multiple-cursors org-plus-contrib org-journal
;    popup pymacs smartparens undo-tree wrap-region yaml-mode
    )
  "A list of packages to ensure are installed at launch.")
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(require 'package)
;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;(package-initialize)

