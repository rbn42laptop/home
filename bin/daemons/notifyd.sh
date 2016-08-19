########################
pkill dunst

#显示通知,可以接收notify-send,不过好像接收不到wesnoth
#dunst -config ~/config/rc/dunst -print >> /dev/shm/notification_log &


#非常正规的界面,
#默认界面很好,不像gnome一样臃肿,也不像xfce一样简陋
#而且带有icon
#似乎接收不了wesnoth,用一段时间再看.
lxqt-notificationd &

#/usr/lib/notification-daemon-1.0/notification-daemon
#xfce4-notifyd


#twmnd& #这个相当不错,很精致,不过似乎不适合和图片一起用?
#用久了之后,
#或许这个内在设计比较复杂,作为一个小程序来说,稳定性和性能都很差

#twmn 的布局不适合配合icon,比如歌曲art,
#但是换歌显示notify干扰太强了.
#
#如果以后要给歌曲加notify的话,那么可以试试看dunst,好像可以支持icon布局,
#或者lxqt-notificationd?
