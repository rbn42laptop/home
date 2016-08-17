
;隐藏menu
;(menu-bar-mode -1)
;隐藏modeline
;(setq-default mode-line-format nil) 

;抽取出来默认8色主题
;虽然可以抽取颜色,但是orgmode的face set的时候报invalid,原因未知.
(load-file "~/config/rc/emacs/transparent/8color/theme.el")
(load-file "~/config/rc/emacs/transparent/8color/theme-patch.el")
