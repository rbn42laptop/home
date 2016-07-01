#!/bin/bash
export MUTE=`pamixer --get-mute`
export VOL=`pamixer --get-volume`
if [ "false" == $MUTE ];
then
    #volnoti-show $VOL
    #图太大了,位置不好,干扰性太强.
    #notify-send $VOL
    echo $VOL
else
    #volnoti-show $VOL -m
    echo $VOL
fi


"""
theme的图片在这个目录下,可以修改.
/usr/share/pixmaps/volnoti
"""
