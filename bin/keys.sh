#!/bin/bash
setxkbmap -option 
setxkbmap -option "caps:swapescape"
#保留caps的原因是有的时候caps会奇怪的亮起，需要保留它来回复
#setxkbmap -option "caps:escape"
#setxkbmap -option "ctrl:swapcaps"
#setxkbmap -model "hhk"
#http://hack.org/mc/writings/xkb.html

#不過好像還是有間歇性的問題,恩,在切換rime輸入法的時候,會出現問題
#setxkbmap -option "caps:swapescape"
