
;隐藏menu
;(menu-bar-mode -1)
;F10 进入menu
;奇怪的一点是,隐藏menu的时候,按G,会滚过头,在页面下半留出很多空白
;有menu的时候,似乎就没有这个问题

;隐藏modeline
;(setq-default mode-line-format nil) 

;(set-face-underline 'menu t) 

(set-face-foreground 'vertical-border "brightwhite") 

;很奇怪的,下面的配置在8色环境下显示很正常.
;可能的原因是,下面的配置因为无效,触发了某些默认效果,正好是我们想要的.
(custom-set-faces
 '(menu ((t (:foreground "brightwhite" :background "color-241"))))
 '(mode-line ((t (:foreground "brightwhite" :background "color-241"))))
 '(mode-line-inactive ((t (:foreground "brightwhite" :background "color-241"))))
)



