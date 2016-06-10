#startx&
conky
xbindkeys

fcitx-autostart
#fcitx-configtool
#fcitx-diagnose
cd ~/Pictures/compiz/
bash bin/compiz.sh

sudo ls
sudo umount /dev/sdb2
sudo umount /dev/sdc2
sudo mkdir /media
sudo mkdir /media/$USER
sudo chown $USER /media/$USER
mkdir /media/$USER/dmzj
mkdir /media/$USER/4T
sudo ntfs-3g /dev/sdb2 /media/$USER/4T
sudo ntfs-3g /dev/sdc2 /media/$USER/dmzj
#sudo chown $USER /media/$USER/4T
#sudo chown $USER /media/$USER/dmzj

sudo wifi-menu

compiz&

