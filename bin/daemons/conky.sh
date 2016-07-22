#!/bin/bash
#时间,load,
#虽然没有multiload好用,有总比没有好
#conky -c ~/config/rc/conky
pkill conky
#conky -c ~/config/rc/conky/conky_panel &

conky -c ~/config/rc/conky/top_right/graph_large_top &
sleep 1
conky -c ~/config/rc/conky/top_right/graph_large_top_num &


#conky -c ~/config/rc/conky/bottom_right/graph_large &
#sleep 1
#conky -c ~/config/rc/conky/bottom_right/graph_large_num &

#conky -c ~/config/rc/conky/dock/graph_large &
#sleep 1
#conky -c ~/config/rc/conky/dock/graph_large_num &

