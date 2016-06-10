
#!/bin/bash
setxkbmap -option "caps:swapescape"
export GTK_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx-autostart

conky


udisksctl mount -b /dev/sdb2
udisksctl mount -b /dev/sdc2

#加个panel显示indicator,以及防止mpv最大化闪烁
xfce4-panel&

#显示通知
dunst &

exec compiz  
#exec fusion-icon
