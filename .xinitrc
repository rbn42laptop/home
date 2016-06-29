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

#虽然xbindkey和tile的相性,但即使compiz0.8也只有24的按键组合.虽然我不知道我是否真的需要更多的.
#不过xbindkey是提供了超出24以后的扩展余地.
#实际上tile中除了focus以外的应该配合xbindkey使用也没有太大问题.
#另一方面感觉compiz0.8的focus似乎和xbindkey也差不多,好像也有双闪烁.
xbindkeys -f ~/config/rc/xbindkeysrc

bash ~/bin/mpd.sh

#时间,load,
#虽然没有multiload好用,有总比没有好
#conky -c ~/config/rc/conky
#conky -c ~/config/rc/conky_panel &

#键盘操作的时候隐藏鼠标.
#原版的unclutter实现似乎不太好,容易出问题.据说和i3冲突.
#测试下如果的确如此,那么需要换成aur版本的.
unclutter &


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
