mkdir config
cp /etc/boot.conf config/boot.conf
cp /etc/fstab config/fstab
cp /etc/portage/make.conf config/make.conf
cp /var/lib/portage/world config/world

cd config 
cp ~/.profile                                   .profile
cp ~/.xinitrc                                   .xinitrc
cp ~/.local/share/applications/mimeapps.list    mimeapps.list 
cp /etc/portage/package.use                     package.use
cp /etc/portage/make.profile/parent             make.profile.parent    

