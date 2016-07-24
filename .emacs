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

(require 'evil)
(evil-mode 1)
;<c-z>切换回到emacs
;vimrc
;修改过的文件会出提示,最好是没有提示.之后再改.
(define-key evil-normal-state-map "q" 'save-buffers-kill-terminal)
(define-key evil-normal-state-map "s" 'save-buffer)

;TODO
;找一个类似vundle的包管理.evil给的方案是手动安装的,
;确认emacs有类似multicursor的plugin
;尝试orgmode,
;orgmode配合evil?
;python代码补全,对比ycm评估(底层是jedi应该会差不多).
;autoformat,vim的autoformat范围挺小的.emacs可以format bash吗?lisp呢?
;evil-tabs弄不好.
;(require 'evil-tabs)
