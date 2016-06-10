cd ~/
python ./apps/indicator-rofi.py&
python ./apps/indicator-window-layout.py&
python ./apps/indicator-window-cycle.py&

#conky&
#setxkbmap -option "caps:swapescape" &

#"使用caps Lock代替ESC
#xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' &
#xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"   #this will make Esc to act as Caps Lock
#xmodmap -e "keycode 66 = Escape NoSymbol Escape"        #this will make Caps Lock to act as Esc
#dconf write /org/gnome/desktop/input-sources/xkb-options "[caps:swapescape]"
#放在这里启动的时候无效。或许我们可以放到bashrc，或者手动启动
#setxkbmap -option "caps:swapescape"
