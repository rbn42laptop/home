#!/bin/fish

source ~/.config/fish/custom/prompt_git.fish
source ~/.config/fish/custom/prompt_pwd.fish
source ~/.config/fish/custom/fish_prompt.fish
source ~/.config/fish/custom/fish_title.fish

set LS_ARGUMENTS ' '

alias l='ls -CF  --hide="*.pyc" --hide="__pycache__"'
alias ll='ls -aF '
alias lll='ls -alF'
alias rm='echo this is trash-cli;trash'
alias rm='trash'
alias e='exit'
alias q='exit'
alias v='vim'
alias vi='vim'

#set PATH /usr/local/cuda-7.5/bin $PATH
set PATH /opt/cuda/bin $PATH
#set LD_LIBRARY_PATH /usr/local/cuda-7.5/lib64 $LD_LIBRARY_PATH
set LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH
#set PATH /usr/local/cuda-7.0/bin $PATH
#set LD_LIBRARY_PATH /usr/local/cuda-7.0/lib64 $LD_LIBRARY_PATH


#命令
set fish_color_command 70AFFF
#命令参数
set fish_color_param A3E2FF
#$符号参数颜色
set fish_color_operator 66F1FF
#新命令复制的颜色
set fish_color_normal FFFFFF

#.xprofile .xsessionrc裏面放了都沒效果,只好放這裏了
#不過好像還是有間歇性的問題,恩,在切換rime輸入法的時候,會出現問題
setxkbmap -option "caps:swapescape"
