mkdir ~/git
cd ~/git

git clone https://github.com/rbn42/kd_tree_tile.git
git clone https://github.com/rbn42/compiz_wallpaper_manager.git
git clone https://github.com/rbn42/compiz_config.git

#git clone https://github.com/rbn42/rofi.git

#修改过了,主要是因为python3和utf8处理的问题
git clone https://github.com/rbn42/python-mpd2.git          
#修改过,加入了我需要的功能
git clone https://github.com/rbn42/ncmpy.git
git clone https://github.com/rbn42/mpd-script.git
    
git clone https://github.com/rbn42/mspider.git

#用distro自带的应该没问题 
#git clone https://github.com/rbn42/ranger.git


cd ~/git/kd_tree_tile
git checkout development

cd ~/git/compiz_wallpaper_manager
git checkout development
#ln -s ../../git/compiz_wallpaper_manager ../Pictures/compiz/bin #有问题,之后修改

#cd ~/git/rofi
#git checkout customized

cd ~/git/python-mpd2/
git checkout development
cd ~/git/ncmpy
git checkout development
cd ~/git/mpd-script
git submodule update --init

cd ~/git/mspider
git checkout development
#git clone https://github.com/NVIDIA/nvidia-docker.git

bash ~/config/git/ranger.sh

bash ~/config/git/rofi.sh

bash ~/config/git/qmlterm.sh
