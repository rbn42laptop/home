#!/bin/bash
source ~/bin/GLOBAL

touch $ROFI_LOCK

#1.在~/bin/play的时候, echo ./bin/play "$@" >> ~/.cache/rofi-3.runcache 留下记录
#2.在~/bin/rofi调用的时候,reset ~/.cache/rofi-3.runcache 整合
python3 ~/bin/reset_rofi_history.py "$ROFI_HISTORY"

#rofi 1.01
rofi -show run \
    -font "SetoFont,WenQuanYi Micro Hei 15" \
    -bw "0" \
    -opacity "60" \
    -color-window "#ffffff,#0ff,#f0f" \
    -color-normal "#ffffff,#000,#ffffff,#000,#ffffff" \
    -separator-style "none" \
    -hide-scrollbar \
    -padding 0 \
    -line-margin 0 \
    -scroll-method 1 \

    #-sidebar-mode \
    #-location 1 \
    #-opacity "90" \
    #-color-normal "#fff,#000,#eee,#000,#fff" \
    #-eh 2 \
    #               bg      fg   bgalt  hlbg  hlfg
    #-color-normal "#ffffff,#000,#eeeeee,#000,#ffffff" \
    #-columns 2
    #-terminal xterm
    #scrollbar 太长了,所以完全没有用处 \

#rofi -show run \
#    -font "SetoFont 15" \
#    -bw "0" \
#    -fg "#000" -bg "#fff" \
#    -hlbg "#000" \
#    -opacity "90" \
#    -bgalt "#eee" \
#    #-sidebar-mode \

#-terminal ~/bin/term
rm $ROFI_LOCK
