
#apt-get -s install cuda
sudo apt update -y
sudo apt upgrade -y
sudo apt install linux-generic linux-source -y
sudo apt install linux-image-generic -y
sudo apt install aria2 -y
#sudo service lightdm stop
wget http://developer.download.nvidia.com/compute/cuda/7_0/Prod/local_installers/cuda_7.0.28_linux.run

#reboot
sudo bash cuda_7.0.28_linux.run #--kernel-source-path=/usr/src/linux-headers-3.13.0-55-generic


sudo vim /etc/modprobe.d/blacklist.conf

blacklist amd76x_edac #this might not be required for x86 32 bit users.
blacklist vga16fb
blacklist nouveau
blacklist rivafb
blacklist nvidiafb
blacklist rivatv

sudo update-initramfs -u
#reboot
sudo bash cuda_7.0.28_linux.run #--kernel-source-path=/usr/src/linux-headers-3.13.0-55-generic
#sudo apt-get --purge remove xserver-xorg-video-nouveau
export PATH=/usr/local/cuda-7.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-7.0/lib64:$LD_LIBRARY_PATH

#dkms  nvidia driver
