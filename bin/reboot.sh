#!/bin/bash 
pkill mpd
pkill dolphin
pkill kactivity
pkill gam_serve

udisksctl unmount -b /dev/disk/by-label/dmzj 
udisksctl unmount -b /dev/disk/by-label/4T

#systemctl reboot
