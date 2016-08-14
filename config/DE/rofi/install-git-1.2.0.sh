#2016-08-14 14:04:33 Sun NZST
#yaourt rofi-git 安装依赖
cd ~/git
git clone https://github.com/DaveDavenport/rofi.git
cd rofi
git checkout 1.2.0 
vim source/history.c 
#define HISTORY_MAX_ENTRIES    2048
git submodule update --init
autoreconf -i       
mkdir build
cd build
../configure
make
sudo make install
