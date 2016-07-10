#!/bin/bash

#換到usb之後需要swap提升性能。
#sudo swapon  /dev/disk/by-label/ssdswap 

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

########################
#capswap
~/bin/keys.sh

#显示音量.
volnoti


########################
#0.8开机需要这个,因为路径放在了/dev/shm里面了
bash ~/Pictures/compiz/bin/compiz.sh


########################
source ~/bin/daemons/fcitx.sh
bash ~/bin/daemons/keys.sh
bash ~/bin/daemons/mpd.sh
bash ~/bin/daemons/notifyd.sh

########################
#键盘操作的时候隐藏鼠标.
#原版的unclutter实现似乎不太好,容易出问题.据说和i3冲突.
#测试下如果的确如此,那么需要换成aur版本的.
unclutter &

########################
#wifi 很耗时，所以放这里开启
sudo /usr/bin/netctl start wifi &

#图标放多了会分散注意力的
docky

########################
udisksctl mount -b /dev/disk/by-label/dmzj 
udisksctl mount -b /dev/disk/by-label/4T




########################
#加个panel显示indicator,以及防止mpv最大化闪烁(这点compiz0.8没有问题,看来虽然0.9用了c++,但是0.8因为时间长,各种可能碰到的问题过程中都修复了吧.)
#虽然x4p界面和配置文件都有点乱,但是将就用,主要是它可以在window最大化的时候不占据空间.如果有其他有这个特性的轻量整洁的panel的话,我们也可以更换.
#比如tint2就很轻量,但是launcher部分的配置依旧很麻烦,很难保留配置.
#但是仔细想想的话,除了削减panel中不必要的部分外,也没什么其他需要.平时panel放太多组件也是不必要的占据注意力,
#或许设定为hide比较好.
xfce4-panel &



########################
exec compiz  

#exec xterm
#exec fusion-icon
