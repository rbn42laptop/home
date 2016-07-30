#!/bin/bash
#如果我能控制变换壁纸的模式的,
#设起始时间为0,终结时间为1,
#时间0到0.75,原壁纸blur化
#时间0.25到时间0.75,原壁纸透明化,
#时间0.25到时间0.75,新壁纸实体化.
#时间0.25到时间1,新壁纸逆blur化.
bash ~/Pictures/compiz/bin/compiz.sh
sleep 500
bash ~/bin/cycle_wallpaper.sh
