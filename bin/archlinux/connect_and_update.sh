#!/bin/bash
#连接网络并且自动升级
#开机时候,系统稳定,是最适合升级的.

#在/dev/shm中留下标记,确保这里仅仅执行一次
#sudo netctl start wifi
#sudo pacman -Syyu --noconfirm
LOCK_FILE=/dev/shm/archlinux_updated
if [ -f /dev/shm/archlinux_updated ];then
    touch $LOCK_FILE
    echo updated
else
    touch $LOCK_FILE
    sudo netctl start wifi >> $LOCK_FILE
    sudo pacman -Syyu --noconfirm >> $LOCK_FILE
fi
