#!/bin/bash
#export INFINALITY_FT="ultimate5"

########################################
#DPI
#对gedit,firefox有效.奇怪必须要是整数
export GDK_SCALE=1
#似乎只改字体
export GDK_DPI_SCALE=1.0
#dolphin有效,但是似乎字体无效.
export QT_SCREEN_SCALE_FACTORS=1
#这个就字体有效了.但是会导致qterm模糊化.
#这参数或许改加入到dolphin启动之类的地方.
export QT_SCALE_FACTOR=1.0

###########################################
#換到usb之後需要swap提升性能。
#sudo swapon  /dev/disk/by-label/ssdswap 

########################################3
#qt5,dolphin需要这个来加载合适的icon主题
export XDG_CURRENT_DESKTOP=GNOME

#qtcurve 
#大略记录下,
#pacman -S qt5ct qtcurve qtconfig-qt4
#在qt5ct和qtconfig-qt4中选择qtcurve
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_STYLE_OVERRIDE=qtcurve
#qtcurve对比murrine的问题是,整个frame使用了同样的背景,而无法像arc theme那样根据区域划分背景.
#按照osx的情形来看,blur比较适合的是用作区域的方块,而不是不定型的形状.qtcurve是把blur用作外围frame了.

#murrine尝试
#murrine在gnome3/compiz0.9中工作正常,但是在compiz0.8,我能想到的差别是dconf的支持度不同.
#export GTK_MODULES=rgba
#blacklist
#export GTK_RGBA_APPS=allbut:firefox-bin:gnome-mplayer:totem:soffice:firefox
#nohup /usr/lib/gnome-settings-daemon/gnome-settings-daemon > /dev/null


export TERM=~/bin/term
