#!/bin/bash

######################
#X相关env
source ~/bin/x.sh


########################
#capswap
bash ~/bin/keys.sh


########################
#显示音量.
volnoti


########################
#0.8开机需要这个,因为路径放在了/dev/shm里面了
#bash ~/git/compiz_wallpaper_manager/compiz.sh #Pictures/compiz/bin/compiz.sh
source ~/.wallpaperrc
bash $WALLPAPER_SCRIPT


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
#wifi 很耗时，所以放这里开启.需要加入sudo nopasswd
sudo /usr/bin/netctl start wifi &


#图标放多了会分散注意力的
#docky


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


#~/bin/term_blur &

###################
#反正开机了总要打开rofi的
#bash ~/bin/run_tiny &
########################
exec compiz  
#exec xterm
#exec fusion-icon
