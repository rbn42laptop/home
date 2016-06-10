#!/bin/bash
rm ~/Pictures/compiz/mark_rotate_*
touch ~/Pictures/compiz/mark_rotate_$1
cd ~/Pictures/compiz/
bash bin/compiz.sh

xrandr --output "DVI-I-1" --rotate  $1
#feh --recursive --bg-fill --randomize --no-fehbg ~/.wallpaper/*

#bash ~/apps/reset_compiz_alone.sh
#setxkbmap -option "caps:swapescape"

case "$1" in
    normal|inverted) dconf write /org/compiz/profiles/Default/plugins/wall/preview-scale 250;;
esac

case "$1" in
    left|right) dconf write /org/compiz/profiles/Default/plugins/wall/preview-scale 150;;
esac

