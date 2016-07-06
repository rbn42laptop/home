#!/bin/bash
#compiz0.8必须要前置xrandr
xrandr --output "DVI-I-1" --rotate  $1

#feh --recursive --bg-fill --randomize --no-fehbg ~/.wallpaper/*

#bash ~/apps/reset_compiz_alone.sh
#setxkbmap -option "caps:swapescape"

case "$1" in
    normal|inverted) 
        export WALL_SIZE=250;export BLUR_OC=100;;
esac

case "$1" in
    left|right) 
        export WALL_SIZE=150;export BLUR_OC=99;;
esac

dconf write /org/compiz/profiles/Default/plugins/wall/preview-scale $WALL_SIZE;
~/git/compiz_config/main.py ~/.config/compiz/compizconfig/Default.ini  set wall as_preview_scale $WALL_SIZE ;
#blur需要重编译,调整屏幕高宽.
~/git/compiz_config/main.py ~/.config/compiz/compizconfig/Default.ini  set blur s0_saturation $BLUR_OC;
#compiz0.8 需要这个步骤submit
rm ~/Pictures/compiz/mark_rotate_*
touch ~/Pictures/compiz/mark_rotate_$1
cd ~/Pictures/compiz/
bash bin/compiz.sh


