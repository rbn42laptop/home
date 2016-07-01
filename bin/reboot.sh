#!/bin/bash 
pkill mpd

udisksctl unmount -b /dev/disk/by-label/dmzj 
udisksctl unmount -b /dev/disk/by-label/4T

#systemctl reboot
