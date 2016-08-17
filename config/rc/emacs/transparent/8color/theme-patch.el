;当前qmlterm中的透明色是241

;(set-face-underline 'mode-line t) 
;(set-face-underline 'mode-line-inactive t) 
(set-face-underline 'menu t) 

(set-face-foreground 'vertical-border "brightwhite") 

(custom-set-faces
 '(menu ((t (:foreground "brightwhite" :background "color-241"))))
 '(mode-line ((t (:foreground "brightwhite" :background "color-241"))))
 '(mode-line-inactive ((t (:foreground "brightwhite" :background "color-241"))))
 '(link ((t (:foreground "Blue"  ))))
 '(org-link ((t (:foreground "Blue"  ))))
)



;;export TERM=xterm-256color
;2016-08-07 20:46:09 Sun NZST
;情况是这样的,透明色是存在于256color中的,色域大了才方便找出空余做自定义.
;而默认似乎是8色
;但是,emacs的默认8色看起来非常好.而启用256色的时候,会丢失这个8色配置.
;所以,如果我们想要用256色中的透明色,那么必须要先再256色中找回默认ansi8色的主题
;网上没有找到,手动配置的话,代码量很大.以solarized为例,有800行

;查看有效颜色的命令 list-color <TAB>
;查看组件颜色的命令 list-face <TAB>
;设置颜色为nil既是默认,8色主题中部分默认背景为透明
;(set-face-foreground 'mode-line "color-241")
;(set-face-background 'mode-line "color-241") 
;需要256色域支持
;(set-face-foreground 'button "blue")

;256色下很多颜色失常,所以需要回正
;solarized 提供了原始的ansi theme的选项.这个theme本身作为非透明theme很不错
;来自 package solarized-theme
;(setf solarized-degrade nil)
;(load-theme 'solarized-light t)

;(load-file "~/config/rc/emacs/transparent/solarized-definitions.el")
;
;(set-face-foreground 'button "blue")
;(set-face-foreground 'error "orange")
;(set-face-foreground 'escape-glyph "red")
;

;背景色,好像找不到透明modeline的方案,看来比vim还难搞.vim是通过设定为None实现透明的,看来emacs做不到.
;(set-face-background 'modeline "Blue")
;  I use the following with TERM=xterm-256color
;(set-face-foreground 'mode-line nil)
;(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
; (add-to-list 'default-frame-alist '(alpha . (85 . 50)))

;(set-face-background 'mode-line "#000000")
;(set-face-foreground 'mode-line-inactive "#606060")
;(set-face-background 'mode-line-inactive "#202020")

