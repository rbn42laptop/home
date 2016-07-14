#!/bin/bash
source ~/bin/GLOBAL
#集中管理加密的部分
#通过修改~/bin/encrypt.sh可以反转加密
cd ~
export TARGET=~/config/encrypt


#Desktop
~/bin/encrypt.sh $ROFI_HISTORY $TARGET/rofi

#Media
~/bin/encrypt.sh ~/.mpd/dislike $TARGET/mpd-dislike 
~/bin/encrypt.sh ~/.mpd/like $TARGET/mpd-like 
~/bin/encrypt.sh ~/.kde/share/config/okularrc $TARGET/okular

#Internet
~/bin/encrypt.sh ~/.config/transmission/settings.json $TARGET/transmission
~/bin/encrypt.sh /etc/hosts $TARGET/hosts



#~/bin/encrypt.sh ~/.cache/rofi-2.runcache ~/config/encrypt/rofi-2.runcache.encrypt
#~/bin/encrypt.sh ~/.config/fish/fish_history  ~/config/fish/fish_history.encrypt
