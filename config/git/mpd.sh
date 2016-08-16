mkdir ~/git
cd ~/git
git clone https://github.com/MaxKellermann/MPD.git
cd ~/git/MPD
autoreconf -i  
./configure 
make
