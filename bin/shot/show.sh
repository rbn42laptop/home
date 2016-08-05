#!/bin/bash
#桌面环境一套,
#不过这些组件其实用不到.

#2016-08-06 11:31:00 Sat NZST
#docky的效果已经很好了,
#但是panel还不行.
#原因可能是因为缺少阴影
#但是emerald的阴影只对非frameless的窗口有效.
#不过gtk3倒是有它们自己独立的阴影的
#或许换掉emerald可以带来阴影,但是唯独只有compiz 的blur是最好的,compton的blur也及不上.

#只有gtk3独立设计了阴影,因为它们的布局不同了
#而qt5应该没有这个机制.

#2016-08-06 11:38:17 Sat NZST
#当前来说,我缺少对这个布局的整体感.
#因为元素都是来自其他系统,所以你独立看到任何一个元素的时候都会想到另一个系统,而无法将这些东西看做一个整体.
#整体来说,win7的风格很圆润,而osx很扁平.
#所以混在一起是否显得突兀呢?尤其是我们连阴影都没有,所以扁平元素就更没立体感了.
#因为是透明主题,所以不带有主题色,少掉了一个把各个组件绑定一起的因素

pkill conky
pkill yabar
pkill docky

sleep 1
export CORNER=top_right
conky -c ~/config/rc/conky/$CORNER/graph_large &
sleep 1
conky -c ~/config/rc/conky/$CORNER/graph_large_num &

sleep 1
yabar -c ~/config/rc/yabar/main.conf &

sleep 1
docky &

#追加terminal
~/git/qmlterm/build/qmlterm -c ~/config/term/qmlterm/window.ini &
