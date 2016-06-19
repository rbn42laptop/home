#Tue 07 Jun 2016 12:30:47 PM NZST
##sudo apt install -y  libpango-dev
##sudo apt install -y  libpangocairo-dev
sudo apt install -y  libcairo-dev
##sudo apt install -y  libcairo-xcb-dev
sudo apt install -y  libglib2.0-dev
sudo apt install -y  libx11-dev
sudo apt install -y  libstartup-notification0-dev
sudo apt install -y  libxkbcommon-dev
sudo apt install -y  libxkbcommon-x11-dev
sudo apt install -y  libxcb1-dev
sudo apt install -y  libx11-xcb-dev
sudo apt install -y  libxcb-util-dev
##sudo apt install -y  xcb-util-wm-dev
sudo apt install libxcb-xinerama0-dev -y

sudo apt install libxcb-ewmh-dev -y
sudo apt install libxcb-icccm4-dev -y

#no need to install packages under archlinux

cd ~/git
git clone https://github.com/DaveDavenport/rofi.git
cd rofi
git checkout 1.1.0 
vim source/history.c 
#define HISTORY_MAX_ENTRIES    2048
git submodule update --init
autoreconf -i       
mkdir build
cd build
../configure
make
sudo make install
