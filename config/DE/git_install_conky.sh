sudo apt-get install -y  build-essential automake git docbook2x libxfixes-dev libasound2-dev libcairo2-dev libcurl4-gnutls-dev libglib2.0-dev libimlib2-dev libiw-dev liblua5.1-0-dev libncurses5-dev libtolua++5.1-dev libtool libx11-dev libxdamage-dev libxext-dev libxft-dev libxml2-dev
sudo apt-get install -y libxnvctrl-dev
sudo apt remove -y conky
export CXX=g++
export CC=gcc
cd ~/git
git clone https://github.com/brndnmtthws/conky.git
cd conky
git checkout v1.10.2 
mkdir build
cd build
cmake ..

bash autogen.sh
#for nvidia
./configure --disable-mpd --disable-moc --enable-wlan --enable-nvidia --enable-imlib2 --enable-lua-cairo --enable-lua-imlib2
make -j 2


sudo apt install cmake-curses-gui
sudo apt install lua5.2
'''
sudo apt install libreadline-dev
curl -R -O http://www.lua.org/ftp/lua-5.3.2.tar.gz
tar zxf lua-5.3.2.tar.gz
cd lua-5.3.2
make linux test
'''

sudo apt-get install build-essential automake git docbook2x libxfixes-dev libasound2-dev libcairo2-dev libcurl4-gnutls-dev libglib2.0-dev libimlib2-dev libiw-dev liblua5.1-0-dev libncurses5-dev libtolua++5.1-dev libtool libx11-dev libxdamage-dev libxext-dev libxft-dev libxml2-dev

sudo apt-get install libxnvctrl-dev
cmake ..
make
sudo make install
