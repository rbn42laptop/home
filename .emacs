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

;在evil中启用org tab
(setq evil-want-C-i-jump nil)
(require 'evil)
(evil-mode 1)

;隐藏menu
(menu-bar-mode -1)
;隐藏modeline
(setq-default mode-line-format nil) 

;背景色,好像找不到透明modeline的方案,看来比vim还难搞.vim是通过设定为None实现透明的,看来emacs做不到.
;(set-face-background 'modeline "Blue")
;  I use the following with TERM=xterm-256color
;(set-face-foreground 'mode-line nil)
;(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
; (add-to-list 'default-frame-alist '(alpha . (85 . 50)))

;(set-face-background 'mode-line "#000000")
;(set-face-foreground 'mode-line-inactive "#606060")
;(set-face-background 'mode-line-inactive "#202020")

;<c-z>切换回到emacs
;vimrc
;修改过的文件会出提示,最好是没有提示.之后再改.
;(define-key evil-normal-state-map "q" 'kill-this-buffer)
;(define-key evil-normal-state-map "q" 
;            (concat ":q" (kbd "RET") "gv=gv")
;(define-key evil-normal-state-map "q" 'kill-emacs)
(define-key evil-normal-state-map "q" 'save-buffers-kill-terminal)
(define-key evil-normal-state-map "s" 'save-buffer)

;时间
(defvar current-date-time-format "%F %T %a %Z" )
(defun insert-current-date-time ()
       (interactive)
       (insert (format-time-string current-date-time-format (current-time)))
       )
(define-key evil-normal-state-map (kbd "<f5>") 'insert-current-date-time)
(define-key evil-insert-state-map (kbd "<f5>") 'insert-current-date-time)

;(global-set-key (kbd "M-S-<f5>") 'org-promote-subtree)
;不知为何下面的按键无效
;(global-set-key (kbd "M-S-<left>") 'org-promote-subtree)


;自定vim风格org按键
;这些按键原本应该仅仅用于org模式.不过我不知道emacs如何模仿vim中的autocmd filetype命令.
;由于暂且仅仅用emacs编辑org,所以配置到全局暂时也不是问题.
;(global-set-key (kbd "H") ')
(define-key evil-normal-state-map "L" 'org-do-demote)
(define-key evil-normal-state-map "H" 'org-do-promote)
;下面两个按键实际上绑定到了C-l上,没有用到shift
;(define-key evil-normal-state-map "\C-L" 'org-demote-subtree)
;(define-key evil-normal-state-map "\C-H" 'org-promote-subtree)

;orgmode下老是误触这个排版键,不过orgmode用的到它的场合很少,所以就废弃掉吧.
;或者我们可以用它做org排版,虽然和vim不太匹配
(define-key evil-normal-state-map ">" 'org-demote-subtree)
(define-key evil-normal-state-map "<" 'org-promote-subtree)

(define-key evil-normal-state-map "J" 'outline-next-visible-heading)
(define-key evil-normal-state-map "K" 'outline-previous-visible-heading)
(define-key evil-normal-state-map "\C-J" 'org-move-subtree-down)
(define-key evil-normal-state-map "\C-K" 'org-move-subtree-up)

(define-key evil-normal-state-map "gu" 'outline-up-heading)

;换行
 (setq org-startup-truncated nil)

;自动备份,全部放到/tmp
    (setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
    (setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))






;TODO
;找一个类似vundle的包管理.evil给的方案是手动安装的,
;确认emacs有类似multicursor的plugin
;尝试orgmode,
;orgmode配合evil?
;python代码补全,对比ycm评估(底层是jedi应该会差不多).
;autoformat,vim的autoformat范围挺小的.emacs可以format bash吗?lisp呢?
;evil-tabs弄不好.
;(require 'evil-tabs)
;
;     (global-set-key "\C-cl" 'org-store-link)
;     (global-set-key "\C-ca" 'org-agenda)
;     (global-set-key "\C-cc" 'org-capture)
;     (global-set-key "\C-cb" 'org-iswitchb)
;
;orgmode似乎和vim模式不太配.
;所以最好先熟悉下orgmode自己.
;用<C-Z>切换vim模式可以连接到熟悉的保存退出

;一份evil和org的混合配置
;; Basic evil-mode and org-mode config to get started
;;; Include this in your Emacs config file (ie ~/.emacs.d/init.el or ~/.emacs)
;(require 'evil)
;;; Enable Evil mode as defuault
;(evil-mode 1)
;;; Treat wrapped line scrolling as single lines
;(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
;(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
;;;; esc quits pretty much anything (like pending prompts in the minibuffer)
;(define-key evil-normal-state-map [escape] 'keyboard-quit)
;(define-key evil-visual-state-map [escape] 'keyboard-quit)
;(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
;;; Enable smash escape (ie 'jk' and 'kj' quickly to exit insert mode)
;(define-key evil-insert-state-map "k" #'cofi/maybe-exit-kj)
;(evil-define-command cofi/maybe-exit-kj ()
;:repeat change
;(interactive)
;(let ((modified (buffer-modified-p)))
;(insert "k")
;(let ((evt (read-event (format "Insert %c to exit insert state" ?j)
;nil 0.5)))
;(cond
;((null evt) (message ""))
;((and (integerp evt) (char-equal evt ?j))
;(delete-char -1)
;(set-buffer-modified-p modified)
;(push 'escape unread-command-events))
;(t (setq unread-command-events (append unread-command-events
;(list evt))))))))
;(define-key evil-insert-state-map "j" #'cofi/maybe-exit-jk)
;(evil-define-command cofi/maybe-exit-jk ()
;:repeat change
;(interactive)
;(let ((modified (buffer-modified-p)))
;(insert "j")
;(let ((evt (read-event (format "Insert %c to exit insert state" ?k)
;nil 0.5)))
;(cond
;((null evt) (message ""))
;((and (integerp evt) (char-equal evt ?k))
;(delete-char -1)
;(set-buffer-modified-p modified)
;(push 'escape unread-command-events))
;(t (setq unread-command-events (append unread-command-events
;(list evt))))))))
;;; ORG MODE
;;; auto-indent an org-mode file
;(add-hook 'org-mode-hook
;(lambda()
;(local-set-key (kbd "C-c C-c") 'org-table-align)
;(local-set-key (kbd "C-c C-f") 'org-table-calc-current-TBLFM)
;(org-indent-mode t)))
;
;(setq x-select-enable-clipboard nil)
;terminal中复制黏贴xsel,原本的多个条件判断都被我删了
(defun xsel-cut-function (text &optional push)
    ;; Insert text to temp-buffer, and "send" content to xsel stdin
    (with-temp-buffer
      (insert text)
      ;; I prefer using the "clipboard" selection (the one the
      ;; typically is used by c-c/c-v) before the primary selection
      ;; (that uses mouse-select/middle-button-click)
      (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
  ;; Call back for when user pastes
(defun xsel-paste-function()
    ;; Find out what is current selection by xsel. If it is different
    ;; from the top of the kill-ring (car kill-ring), then return
    ;; it. Else, nil is returned, so whatever is in the top of the
    ;; kill-ring will be used.
    (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
      (unless (string= (car kill-ring) xsel-output)
	xsel-output )))
  ;; Attach callbacks to hooks
  (setq interprogram-cut-function 'xsel-cut-function)
  (setq interprogram-paste-function 'xsel-paste-function)
 
;为了在org转换html后用firefox打开
;(setq browse-url-generic-program
;      (cond
;       ((eq window-system 'mac) "open") ; mac
;       ((or (eq system-type 'gnu/linux) (eq system-type 'linux)) ; linux
;        (executable-find "firefox"))
;       ))

;(setq browse-url-generic-program
;      (executable-find "firefox"))
;(setq browse-url-browser-function 'browse-url-generic
;      browse-url-generic-program "firefox")

