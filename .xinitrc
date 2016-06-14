
#!/bin/bash
~/bin/keys.sh

#0.8开机需要这个,因为路径放在了/dev/shm里面了
bash ~/Pictures/compiz/bin/compiz.sh

export GTK_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx-autostart

conky -c ~/config/rc/conky

#wifi 很耗时，所以放这里开启
sudo /usr/bin/netctl start wifi &

udisksctl mount -b /dev/sdb2
udisksctl mount -b /dev/sdc2 

#加个panel显示indicator,以及防止mpv最大化闪烁
#compiz0.8似乎不需要
xfce4-panel&

#显示通知,可以接收notify-send,不过好像接收不到wesnoth
dunst -config ~/config/rc/dunst -print >> /dev/shm/notification_log &


exec compiz  
#exec fusion-icon
