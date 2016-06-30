#!/bin/bash
cd ~

################
#git
git add --all .gitignore
git add --all .gitconfig

#####################
#editor
git add --all ~/.vimrc
#git add --all ~/.nanorc

#####################
#theme
#主要都是unity的主题配置,compiz standalone眼下用的是arc
#git add --all ~/.themes/init.sh
#git add --all ~/.themes/config
#unity用到的小脚本,用来平滑化unity launcher
#git add --all ~/.icons/ubuntu
#git add --all ~/.icons/install-ubuntu.sh

###############################
#Desktop
#compiz 启动各个组件的关键脚本
git add --all ~/.xinitrc
#设定开机在tty1 startx
git add --all ~/.bash_profile
#git add --all ~/.xbindkeysrc

git add --all ~/.tilerc
git add --all ~/.qmltermrc
#compiz0.9,内容是空的,主要是确认把配置转移到dconf
#git add --all ~/.config/compiz-1/compizconfig/config
#compiz0.8
git add --all ~/.config/compiz/compizconfig/Default.ini
#compiz standalone需要以下配置来确保gtk theme,unity7不受这些影响.
#git add --all ~/.gtkrc-2.0 #不要同步，会泄漏。
git add --all ~/.gtkrc-2.0.mine
git add --all ~/.config/gtk-3.0/settings.ini
git add --all ~/.emerald/settings.ini
git add --all ~/.emerald/themes/th
#字体,主要是确保各种软件会加载wqy
git add --all ~/.config/fontconfig/fonts.conf

#留一个panel,放些鼠标操作可能用到的按键,
#启动rofi,启动expo,重置compiz focus(0.8在firefox崩溃的时候会用到),音量,输入法
git add --all ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml

#git add --all ~/.i3
#git add --all ~/.conky_lua_scripts.lua
#git add --all ~/.xsessionrc
#git add --all ~/.conkyrc
#git add --all ~/.xprofile
#git add --all ~/.config/autostart/startup.desktop
#git add --all ~/.local/share/applications/mimeapps.list
#git add --all ~/.Xresources


########################
#Media
git add --all ~/.ncmpcpp/config
git add --all ~/.ncmpcpp/bindings
git add --all ~/.config/ncmpy/ncmpy.conf
git add --all ~/.mpd/mpd.conf
#git add --all ~/.config/vlc/vlcrc
#git add --all ~/.config/mpv/mpv.conf


############################
#System
git add --all ~/.config/htop/htoprc
git add --all ~/.config/ranger/rifle.conf
git add --all ~/.config/ranger/rc.conf

########################
#Shell
#fish配置,放在独立文件夹,防止被奇怪的软件改掉
git add --all ~/.config/fish/custom
#以防万一 qmlterm出问题,最近一次出问题似乎是pacman升级后,opengl不工作,必须要reboot,依赖gl的qml就没法启动了
git add --all ~/.config/sakura/
git add --all ~/.ipython/profile_shell/ipython_config.py
#git add --all ~/.tmux.config
#git add --all ~/.config/tilda/
#bash 原本就放了几个alias和cuda变量,所以扔掉也没关系,恢复默认配置吧.
#git add --all ~/.bashrc
#git add --all ~/.bashrc_my

########################
#Internet
#git add --all ~/.w3m/index.html
git add --all ~/.mspider/config.py
git add --all ~/.mspider/config.sh

########################
#Encrypt
~/bin/gitencrypt.sh

git add --all ~/bin
git add --all ~/config
#随记用
git add --all ~/todo
#测试用小代码
#git add --all ~/codebase
git add --all ~/.theanorc
#下载的paper之类的
git add --all ~/Documents
#git add --all ~/apps/


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
