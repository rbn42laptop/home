cd ~
rm *.deb
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb
sudo dpkg -i *.deb
dropbox start -i
dropbox stop
#dropbox autostart y
~/.dropbox-dist/dropboxd
