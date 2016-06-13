
#!/bin/bash
~/bin/keys.sh

export GTK_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx-autostart

conky -c ~/config/rc/conky

udisksctl mount -b /dev/sdb2
udisksctl mount -b /dev/sdc2

#加个panel显示indicator,以及防止mpv最大化闪烁
xfce4-panel&

#显示通知,可以接收notify-send,不过好像接收不到wesnoth
dunst -config ~/config/rc/dunst -print >> /dev/shm/notification_log &

exec compiz  
#exec fusion-icon
