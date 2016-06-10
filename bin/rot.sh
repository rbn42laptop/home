#!/bin/bash
rm ~/Pictures/compiz/mark_rotate_*
touch ~/Pictures/compiz/mark_rotate_$1
cd ~/Pictures/compiz/
bash bin/compiz.sh

xrandr --output "DVI-I-1" --rotate  $1
#feh --recursive --bg-fill --randomize --no-fehbg ~/.wallpaper/*

#bash ~/apps/reset_compiz_alone.sh
