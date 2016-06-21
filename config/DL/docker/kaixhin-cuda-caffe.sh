#distro
cd ~
git clone https://github.com/KittyKatt/screenFetch.git
cd screenFetch
./screenfetch-dev  #ubuntu1404 693 packages

#home
apt install -y vim-gnome cmake gcc fish
cd ~
git clone https://github.com/rbn42/home.git
cd home
git checkout arch
bash bin/githome.sh
bash ~/config/edit/install_vundle.sh
