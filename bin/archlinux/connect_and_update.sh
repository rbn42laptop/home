#!/bin/bash
#连接网络并且自动升级
#开机时候,系统稳定,是最适合升级的.

#在/dev/shm中留下标记,确保这里仅仅执行一次
#sudo netctl start wifi
#sudo pacman -Syyu --noconfirm
if [ -f /dev/shm/archlinux_updated ];then
    touch /dev/shm/archlinux_updated
    echo updated
else
    touch /dev/shm/archlinux_updated
    sudo netctl start wifi
    sudo pacman -Syyu --noconfirm
fi
