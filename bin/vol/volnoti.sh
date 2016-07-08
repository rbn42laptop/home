#!/bin/bash
export MUTE=`pamixer --get-mute`
export VOL=`pamixer --get-volume`
if [ "false" == $MUTE ];
then
#    volnoti-show $VOL
    export M=""
    #图太大了,位置不好,干扰性太强.
    #notify-send $VOL
    echo $VOL
else
#    volnoti-show $VOL -m
    export M="-m"
    echo $VOL
fi

volnoti-show $VOL $M

#进程式效率太低了,还是要做成监听式.主要是启动太慢了.而且改变音量的时候,会有窗口关闭重启
#pkill volnoti_qml
#~/git/volnoti/qml/build/volnoti_qml $VOL $M


#theme的图片在这个目录下,可以修改.
#/usr/share/pixmaps/volnoti
