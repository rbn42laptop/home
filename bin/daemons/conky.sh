#!/bin/bash
#时间,load,
#虽然没有multiload好用,有总比没有好
#conky -c ~/config/rc/conky
pkill conky
#pkill yabar

sleep 1
CORNER=top_right
#export CORNER=bottom_right
#conky -c ~/config/rc/conky/conky_panel &
#--conky -c ~/config/rc/conky/top_right/mpd &
#conky -c ~/config/rc/conky/top_left/mpd &
#conky -c ~/config/rc/conky/bottom_left/mpd &

#conky -c ~/config/rc/conky//graph_large_top &
#conky -c ~/config/rc/conky/top_right/graph_large_top_num &

conky -c ~/config/rc/conky/$CORNER/graph_large &
sleep 1
conky -c ~/config/rc/conky/$CORNER/graph_large_num &

#conky -c ~/config/rc/conky/bottom_right/graph_large &
#sleep 1
#conky -c ~/config/rc/conky/bottom_right/graph_large_num &

#conky -c ~/config/rc/conky/dock/graph_large &
#sleep 1
#conky -c ~/config/rc/conky/dock/graph_large_num &

#yabar配置也放在这里,因为yabar和conky一样是显示状态的
#sleep 1
#yabar -c ~/config/rc/yabar/main.conf &
