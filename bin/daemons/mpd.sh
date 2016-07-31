#!/bin/bash
mpd
mpc volume 20 #mpv设定了40,mpd为20的时候,mpv的音量还是偏低,
#改动这里对httpd stream无效 
mpc repeat on
mpc random on
mpc single off
mpc consume off
#mpc pause


#mpd播放提示
#pkill mpd-notificatio
#mpd-notification -m ~/Music/  &

#换歌显示notify干扰太强了.

#export XDG_MUSIC_DIR=~/Music
#systemctl --user start mpd-notification

#visual
#~/bin/visual/mpd/visual &
#~/bin/visual/mpd/large &
