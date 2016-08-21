#!/bin/bash
#连接网络并且自动升级
#开机时候,系统稳定,是最适合升级的.

#在/dev/shm中留下标记,确保这里仅仅执行一次
#sudo netctl start wifi
#sudo pacman -Syyu --noconfirm


#或许不该频繁升级
#arch上更新的软件似乎并不稳定,
#比如这里mpd就出问题了
#https://bugs.musicpd.org/print_bug_page.php?bug_id=4568
#因为这台电脑的安全性并不重要,
#安装完了之后不升级保持稳定性可能更好.
#等到mpd的这个问题被解决后就关掉这里的更新吧.
#不过这个bug是报在mpd网站的,所以也是mpd自身没有测试好就把软件发布了的责任.

LOCK_FILE=/dev/shm/archlinux_updated
if [ -f /dev/shm/archlinux_updated ];then
    touch $LOCK_FILE
    echo updated
else
    touch $LOCK_FILE
    sudo netctl start wifi >> $LOCK_FILE
    sudo pacman -Syyu --noconfirm >> $LOCK_FILE
fi
