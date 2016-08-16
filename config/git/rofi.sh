#!/bin/bash

mkdir ~/git
cd ~/git

git clone https://github.com/rbn42/rofi.git
cd ~/git/rofi
git checkout customize
#merge升级放在这里,这样重装的时候就可以接收更新了.
#因为cache size必须要改掉,所以rofi是不能留给包管里系统做升级管理的.
git remote remove upstream
git remote add upstream https://github.com/davedavenport/rofi.git
git pull upstream
git merge upstream/master
#rofi安装见~/config/rofi
#bash ~/config/git/rofi_build.sh
