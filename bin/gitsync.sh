#!/bin/bash
cd ~

#git
git add --all .gitignore
git add --all .gitconfig

#editor
git add --all ~/.vimrc
git add --all ~/.nanorc

#theme
git add --all ~/.themes/init.sh
git add --all ~/.themes/config
git add --all ~/.icons/ubuntu
git add --all ~/.icons/install-ubuntu.sh

#Desktop
git add --all ~/.i3
git add --all ~/.xsessionrc
git add --all ~/.conkyrc
git add --all ~/.conky_lua_scripts.lua
git add --all ~/.xprofile
git add --all ~/.xinitrc
git add --all ~/.tilerc
git add --all ~/.qmltermrc
git add --all ~/.config/compiz-1/compizconfig/config
git add --all ~/.gtkrc-2.0
git add --all ~/.config/gtk-3.0/settings.ini
git add --all ~/.emerald/settings.ini
git add --all ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
#git add --all ~/.xbindkeysrc
#git add --all ~/.config/autostart/startup.desktop
#git add --all ~/.local/share/applications/mimeapps.list
#git add --all ~/.Xresources


#Media
git add --all ~/.ncmpcpp/config
git add --all ~/.ncmpcpp/bindings
git add --all ~/.config/ncmpy/ncmpy.conf
git add --all ~/.mpd/mpd.conf
#git add --all ~/.config/vlc/vlcrc
#git add --all ~/.config/mpv/mpv.conf


#System
git add --all ~/.config/htop/htoprc
git add --all ~/.config/ranger/rifle.conf
git add --all ~/.config/ranger/rc.conf

#Shell
git add --all ~/.config/fish/custom
#git add --all ~/.config/tilda/
#git add --all ~/.config/sakura/
#git add --all ~/.bashrc
#git add --all ~/.bashrc_my
#git add --all ~/.tmux.config

#Internet
#git add --all ~/.w3m/index.html
git add --all ~/.mspider/config.py
git add --all ~/.mspider/config.sh

#Encrypt
~/bin/gitencrypt.sh

git add --all ~/bin
git add --all ~/apps/
git add --all ~/config
git add --all ~/todo
git add --all ~/codebase
git add --all ~/.theanorc

git add --all ~/Documents

#git add --all ~/.fonts/*.sh
#git add --all ~/.config/autostart/indicator-rofi.desktop
#git add --all ~/.config/autostart/indicator-window-cycle.desktop
#git add --all ~/.config/autostart/indicator-window-layout.desktop
#git config --global credential.helper cache
# Set git to use the credential memory cache
#git config --global credential.helper 'cache --timeout=3600000' 1000hours
#git add --all ~/Pictures/compiz/back
#git add --all ~/Pictures/compiz/raw
#git add --all ~/Pictures/compiz/raw_
#git add --all ~/Pictures/compiz/raw/*.py
#git add --all ~/Pictures/compiz/raw/*.sh
#git add --all ~/Pictures/compiz/*.sh
#git add --all ~/Pictures/compiz/*.py
#git add --all ~/Pictures/compiz/*.md
#git add --all ~/comiccrawler
#git add --all ~/.themes/Ambiance-Flat-Teal
#git add --all ~/.themes/Ambiance-My
#git add --all ~/.themes/readme

#git add --all ~/.icons/AwOkenWhite
#git add --all ~/.icons/AwOken
#git add --all ~/.icons/MBuntu-OS-Y
#git add --all ~/.icons/MBuntu-OS-Y-2
git commit -m "auto commit"
git push
