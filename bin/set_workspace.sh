#!/bin/bash
#dconf read  /org/compiz/profiles/unity/plugins/core/hsize 
#dconf read  /org/compiz/profiles/unity/plugins/core/vsize 

#unity7
dconf write /org/compiz/profiles/unity/plugins/core/hsize $1
dconf write /org/compiz/profiles/unity/plugins/core/vsize $2

#compiz0.9
dconf write /org/compiz/profiles/Default/plugins/core/hsize $1
dconf write /org/compiz/profiles/Default/plugins/core/vsize $2

#compiz0.8
~/git/compiz_config/main.py ~/.config/compiz/compizconfig/Default.ini set core s0_hsize $1
~/git/compiz_config/main.py ~/.config/compiz/compizconfig/Default.ini set core s0_vsize $2
#~/git/compiz_config/main.py ~/.config/compiz/compizconfig/Default.ini submit

bash ~/git/compiz_wallpaper_manager/compiz.sh
#bash ~/Pictures/compiz/bin/compiz.sh
