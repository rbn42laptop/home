#!/bin/bash
#时间,load,
#虽然没有multiload好用,有总比没有好
#conky -c ~/config/rc/conky
pkill conky
conky -c ~/config/rc/conky/graph_large &
#数字长度不一,很难调整.
conky -c ~/config/rc/conky/graph_large_num &
#conky -c ~/config/rc/conky/conky_panel &

