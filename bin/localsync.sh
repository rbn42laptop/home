#!/bin/bash
rsync -a $HOME/laosao               /media/$USER/dmzj/sync
rsync -a $HOME/Pictures/compiz/raw  /media/$USER/dmzj/sync
#加入删除选项是比较危险的,可能误删除源文件的时候连同目标文件一起删除了,随意最好两种备份都要做.
rsync -a --delete-excluded $HOME/laosao                 /media/$USER/dmzj/sync_del
rsync -a --delete-excluded $HOME/Pictures/compiz/raw    /media/$USER/dmzj/sync_del
