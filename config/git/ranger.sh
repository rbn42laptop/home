#!/bin/bash

mkdir ~/git
cd ~/git
git clone https://github.com/rbn42/ranger.git
cd ~/git/ranger
git checkout hide-username
#merge升级
git remote remove upstream
git remote add upstream https://github.com/ranger/ranger.git
git pull upstream
git merge upstream/master
#ranger似乎有办法默认显示mtime,但是还不清楚具体怎么弄,只好暂时这么处理了
#git checkout mtime-in-column

