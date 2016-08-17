;各种快捷键.evil也放这里管.

;在evil中启用org tab
(setq evil-want-C-i-jump nil)
(require 'evil)
(evil-mode 1)


;<c-z>切换回到emacs
;vimrc
;修改过的文件会出提示,最好是没有提示.之后再改.
;(define-key evil-normal-state-map "q" 'kill-this-buffer)
;(define-key evil-normal-state-map "q" 
;            (concat ":q" (kbd "RET") "gv=gv")
;(define-key evil-normal-state-map "q" 'kill-emacs)
(define-key evil-normal-state-map "q" 'save-buffers-kill-terminal)
(define-key evil-normal-state-map "s" 'save-buffer)

;macro基本上感觉和vim用起来差不多,没发现异常的地方.
(define-key evil-normal-state-map (kbd "C-q") 'evil-record-macro)

(define-key evil-normal-state-map (kbd "C-e") 'evil-end-of-line)
;C-a不用改,默认已经是类似Home键的操作了
;(define-key evil-normal-state-map (kbd "C-a") 'evil-first-non-blank)

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
;(define-key evil-normal-state-map "L" 'org-do-demote)
;(define-key evil-normal-state-map "H" 'org-do-promote)
(define-key evil-normal-state-map "L" 'org-metaright)
(define-key evil-normal-state-map "H" 'org-metaleft)
;下面两个按键实际上绑定到了C-l上,没有用到shift
;(define-key evil-normal-state-map "\C-L" 'org-demote-subtree)
;(define-key evil-normal-state-map "\C-H" 'org-promote-subtree)

;orgmode下老是误触这个排版键,不过orgmode用的到它的场合很少,所以就废弃掉吧.
;或者我们可以用它做org排版,虽然和vim不太匹配
(define-key evil-normal-state-map ">" 'org-demote-subtree)
(define-key evil-normal-state-map "<" 'org-promote-subtree)

(define-key evil-normal-state-map "J" 'outline-next-visible-heading)
(define-key evil-normal-state-map "K" 'outline-previous-visible-heading)
;(define-key evil-normal-state-map "\C-J" 'org-move-subtree-down)
;(define-key evil-normal-state-map "\C-K" 'org-move-subtree-up)
(define-key evil-normal-state-map "\C-J" 'org-metadown)
(define-key evil-normal-state-map "\C-K" 'org-metaup)

(define-key evil-normal-state-map "gu" 'outline-up-heading)

;plain list的切换 现在是C-c -
;这个功能实际上并不常用,但是给人以orgmode的确在管理list的实感.
;更重要的其实是确保orgmode会管理list格式,做条目的上下调整什么的.

