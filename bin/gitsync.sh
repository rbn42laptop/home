#!/bin/bash
cd ~

git add --all .gitignore
git add --all .gitconfig

git add --all ~/bin

git add --all ~/.vimrc
git add --all ~/.nanorc
git add --all ~/.bashrc
git add --all ~/.xprofile
git add --all ~/.bashrc_my
git add --all ~/.tmux.config

git add --all ~/.Xresources
git add --all ~/.xsessionrc
git add --all ~/.conkyrc
git add --all ~/.theanorc
git add --all ~/.xbindkeysrc
git add --all ~/.config/compiz-1/compizconfig/config

#git add --all ~/.themes/Ambiance-Flat-Teal
git add --all ~/.themes/init.sh
git add --all ~/.themes/config
#git add --all ~/.themes/Ambiance-My
#git add --all ~/.themes/readme

#git add --all ~/.icons/AwOkenWhite
#git add --all ~/.icons/AwOken
#git add --all ~/.icons/MBuntu-OS-Y
#git add --all ~/.icons/MBuntu-OS-Y-2
git add --all ~/.icons/ubuntu
git add --all ~/.icons/install-ubuntu.sh

#git add --all ~/Pictures/compiz/back
#git add --all ~/Pictures/compiz/raw
#git add --all ~/Pictures/compiz/raw_
#git add --all ~/Pictures/compiz/raw/*.py
#git add --all ~/Pictures/compiz/raw/*.sh
#git add --all ~/Pictures/compiz/*.sh
#git add --all ~/Pictures/compiz/*.py
#git add --all ~/Pictures/compiz/*.md

#git add --all ~/comiccrawler

~/bin/encrypt.sh ~/.cache/rofi-2.runcache ~/config/rofi/rofi-2.runcache.encrypt
~/bin/encrypt.sh ~/.config/transmission/settings.json ~/config/transmission.config.encrypt
#~/bin/encrypt.sh ~/.config/fish/fish_history  ~/config/fish/fish_history.encrypt

git add --all ~/apps/
git add --all ~/.i3
#git add --all ~/.fonts/*.sh
git add --all ~/config
git add --all ~/.ncmpcpp/config

git add --all ~/.config/vlc/vlcrc
git add --all ~/.config/tilda/
git add --all ~/.config/sakura/
git add --all ~/.config/autostart/startup.desktop
git add --all ~/.config/fish/custom

git add --all ~/.local/share/applications/mimeapps.list
#git add --all ~/.config/autostart/indicator-rofi.desktop
#git add --all ~/.config/autostart/indicator-window-cycle.desktop
#git add --all ~/.config/autostart/indicator-window-layout.desktop

git add --all ~/todo
git add --all ~/codebase

#git config --global credential.helper cache
# Set git to use the credential memory cache
#git config --global credential.helper 'cache --timeout=3600000' 1000hours

git commit -m "m"
git push
