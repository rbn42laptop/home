
sudo apt install bzr -y
mkdir ~/test/sakura/
cd ~/test/sakura/
bzr branch lp:sakura
cd sakura
cmake .
make
sudo make install
