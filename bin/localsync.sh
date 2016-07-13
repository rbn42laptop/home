#!/bin/bash
rsync -a $HOME/laosao               /media/$USER/dmzj/sync
rsync -a $HOME/Pictures/compiz/raw  /media/$USER/dmzj/sync
rsync -a $HOME/.mozilla /media/$USER/dmzj/sync
rsync -a $HOME/.thunderbird /media/$USER/dmzj/sync
rsync -a $HOME/pw /media/$USER/dmzj/sync
#加入删除选项是比较危险的,可能误删除源文件的时候连同目标文件一起删除了,随意最好两种备份都要做.
rsync -a --delete-excluded $HOME/laosao                 /media/$USER/dmzj/sync_del
rsync -a --delete-excluded $HOME/Pictures/compiz/raw    /media/$USER/dmzj/sync_del
rsync -a --delete-excluded $HOME/.mozilla                 /media/$USER/dmzj/sync_del
rsync -a --delete-excluded $HOME/.thunderbird           /media/$USER/dmzj/sync_del
rsync -a --delete-excluded $HOME/pw /media/$USER/dmzj/sync_del

#auto rsync arch linux wiki 
#https://wiki.archlinux.org/index.php/Syncthing
#https://en.wikipedia.org/wiki/Comparison_of_online_backup_services
#cloud不太好,因为基本都是商业软件,依赖限制都很多,处理起来很麻烦.
