#!/bin/bash
export MUTE=`pamixer --get-mute`
if [ "false" == $MUTE ];
then
    #volnoti-show `pamixer --get-volume`
    #图太大了,位置不好,干扰性太强.
    echo 1
else
    #volnoti-show `pamixer --get-volume` -m
    echo 1
fi


"""
theme的图片在这个目录下,可以修改.
/usr/share/pixmaps/volnoti
"""
