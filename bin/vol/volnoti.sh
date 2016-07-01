#!/bin/bash
export MUTE=`pamixer --get-mute`
if [ "false" == $MUTE ];
then
    volnoti-show `pamixer --get-volume`
else
    volnoti-show `pamixer --get-volume` -m
fi


"""
theme的图片在这个目录下,可以修改.
/usr/share/pixmaps/volnoti
"""
