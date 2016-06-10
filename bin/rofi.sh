#!/bin/bash
export LOCK=/dev/shm/.rofi_lock
touch $LOCK
rofi   -show run -font "SetoFont 15" -opacity 90 -fg "#000" -bg "#fff" -sidebar-mode  -bgalt "#eee" -hlbg "#000" -bw 0
rm $LOCK
