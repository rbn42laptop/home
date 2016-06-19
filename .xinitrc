#!/bin/bash

#capswap
~/bin/keys.sh

#0.8开机需要这个,因为路径放在了/dev/shm里面了
bash ~/Pictures/compiz/bin/compiz.sh

export GTK_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx-autostart 

#时间,load,
#虽然没有multiload好用,有总比没有好
#conky -c ~/config/rc/conky

#wifi 很耗时，所以放这里开启
sudo /usr/bin/netctl start wifi &

#docky还是算了,图标放多了会分散注意力的
#docky

udisksctl mount -b /dev/sdb2
udisksctl mount -b /dev/sdc2 

#加个panel显示indicator,以及防止mpv最大化闪烁(这点compiz0.8没有问题,看来虽然0.9用了c++,但是0.8因为时间长,各种可能碰到的问题过程中都修复了吧.)
xfce4-panel &

#显示通知,可以接收notify-send,不过好像接收不到wesnoth
dunst -config ~/config/rc/dunst -print >> /dev/shm/notification_log &

exec compiz  
#exec xterm
#exec fusion-icon
