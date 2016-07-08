#!/bin/bash 
pkill mpd
pkill mpv
pkill firefox
pkill thunderbird
pkill dolphin
pkill wine  

pkill kactivity
pkill gam_serve

pkill conky
pkill docky
pkill xfce4-panel

udisksctl unmount -b /dev/disk/by-label/dmzj 
udisksctl unmount -b /dev/disk/by-label/4T

#systemctl reboot
