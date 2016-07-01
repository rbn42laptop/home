#!/bin/bash
mpd
mpc volume 40
mpc repeat on
mpc random on
mpc single off
mpc consume off
#mpc pause


#mpd播放提示
#pkill mpd-notificatio
#mpd-notification -m ~/Music/  &
"""
换歌显示notify干扰太强了.
"""

#export XDG_MUSIC_DIR=~/Music
#systemctl --user start mpd-notification
