#!/bin/bash
export TARGET="/media/$USER/dmzj/sync"
rsync -a $HOME/laosao               $TARGET
rsync -a $HOME/Pictures/compiz/raw  $TARGET
rsync -a $HOME/.mozilla             $TARGET
rsync -a $HOME/.thunderbird         $TARGET
rsync -a $HOME/.aMule                 $TARGET
rsync -a $HOME/.ssh                 $TARGET
rsync -a $HOME/pw                   $TARGET

rsync -a $HOME/.github_sync_aes_key $TARGET

#加入删除选项是比较危险的,可能误删除源文件的时候连同目标文件一起删除了,随意最好两种备份都要做.
export TARGET="/media/$USER/dmzj/sync_del"
rsync -a --delete-excluded $HOME/laosao                     $TARGET
rsync -a --delete-excluded $HOME/Pictures/compiz/raw        $TARGET
rsync -a --delete-excluded $HOME/.mozilla                   $TARGET
rsync -a --delete-excluded $HOME/.thunderbird               $TARGET
rsync -a --delete-excluded $HOME/.aMule                       $TARGET
rsync -a --delete-excluded $HOME/.ssh                       $TARGET
rsync -a --delete-excluded $HOME/pw                         $TARGET

#auto rsync arch linux wiki 
#https://wiki.archlinux.org/index.php/Syncthing
#https://en.wikipedia.org/wiki/Comparison_of_online_backup_services
#cloud不太好,因为基本都是商业软件,依赖限制都很多,处理起来很麻烦.
