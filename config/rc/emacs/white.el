
;隐藏menu
(menu-bar-mode -1)
;隐藏modeline
;(setq-default mode-line-format nil) 

(set-face-underline 'menu t) 

(set-face-foreground 'vertical-border "brightwhite") 

;很奇怪的,下面的配置在8色环境下显示很正常.
;可能的原因是,下面的配置因为无效,触发了某些默认效果,正好是我们想要的.
(custom-set-faces
 '(menu ((t (:foreground "brightwhite" :background "color-241"))))
 '(mode-line ((t (:foreground "brightwhite" :background "color-241"))))
 '(mode-line-inactive ((t (:foreground "brightwhite" :background "color-241"))))
)



