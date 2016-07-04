#!/bin/bash
source ~/bin/GLOBAL
#记录到rofi
export FILE_PATH=`realpath "$1"`
echo 1 ./bin/edit \"$FILE_PATH\" >> "$ROFI_HISTORY"
#gedit
~/bin/term_blur -e "vim \"$FILE_PATH\""
