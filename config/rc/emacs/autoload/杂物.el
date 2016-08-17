
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
