#!/bin/fish

if [ $QMLTERM_THEME ]
else
    export QMLTERM_THEME='transparent'
end

if [ 'black' = $QMLTERM_THEME ]
    #vim -u 的表现奇怪,用了之后backspace就不能删除上一行了
    #这个脚本写的是有问题的,但是至少用它一段时间,靠它提示的话,应该可以一定程度的修正操作习惯.
    alias vim="export MYVIMRC=~/config/rc/vim/black.vim;python ~/bin/filter/edit_filter.py "

    source ~/.config/fish/custom/theme-bobthefish/fish_prompt.fish
  #  source ~/.config/fish/custom/shellder/fish_prompt.fish
  #  source ~/.config/fish/custom/theme-bobthefish/fish_greeting.fish
  #  source ~/.config/fish/custom/theme-bobthefish/fish_title.fish
  #  这东西不能用,连按回车的时候就会感觉到很耗性能.
   # source ~/.config/fish/custom/theme-bobthefish/fish_right_prompt.fish
else if [ 'transparent' = $QMLTERM_THEME ]
    alias vim="export MYVIMRC=~/config/rc/vim/transparent.vim;python ~/bin/filter/edit_filter.py "

    source ~/.config/fish/custom/prompt_git.fish
    source ~/.config/fish/custom/prompt_pwd.fish
    source ~/.config/fish/custom/fish_prompt.fish
end

source ~/.config/fish/custom/fish_title.fish

set LS_ARGUMENTS ' '

#覆盖一些危险的命令。
#alias rm='echo this is trash-cli;trash'
alias rm='trash'
#这两条命令的确弄丢过数据,但是很多时候似乎的确会依赖它们清理掉无用的文件.
#不过其实除了大文件以外,多一份备份关系也不大,可以事务处理完毕后再清理的.
alias mv="mv --backup=numbered "
alias cp="cp --backup=numbered "


alias l='ls -CF  --hide="*.pyc" --hide="__pycache__"'
alias ll='ls -aF '
alias lll='ls -alF'


#alias e='exit'
alias q='exit'
#alias v='vim'
#alias vi='vim'
alias commit="bash ~/bin/git_commit_push.sh"
alias bash="python ~/bin/filter/bash_filter.py"
alias ipython="bash ~/bin/ipython.sh"
alias screenfetch="bash ~/bin/shot/screenfetch.sh"
#alias neofetch="bash ~/bin/shot/neofetch.sh"
#set EDITOR vim
alias emacs="emacs -nw"

alias dc='echo dc'

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

#做不到直接赋值COLORFGBG,所以放这里了.
if [ $MY_COLOR ]
    set COLORFGBG $MY_COLOR
end

#.xprofile .xsessionrc裏面放了都沒效果,只好放這裏了
bash ~/bin/keys.sh
