
(when (string= "transparent" (getenv "THEME_EMACS"))
    (load-file "~/config/rc/emacs/transparent.el"))
(when (string= "white" (getenv "THEME_EMACS"))
    (load-file "~/config/rc/emacs/white.el"))

(load-file "~/config/rc/emacs/packages.el")
;;自动加载
(load-file "~/config/rc/emacs/load-directory.el")
(load-directory "~/config/rc/emacs/autoload")
