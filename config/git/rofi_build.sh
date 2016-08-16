#!/bin/bash
#rofi安装见~/config/rofi
cd ~/git/rofi
git submodule update --init
autoreconf -i       
mkdir build
cd build
../configure
make
sudo make install
