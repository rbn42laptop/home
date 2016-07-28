set nocompatible              " be iMproved, required
filetype off                  " required

let enable_airline=1
"无效,需要其他办法来按文件类型激活plugin
"autocmd FileType python let enable_airline=1

"插件
source ~/config/rc/vim/plugins.vim

source ~/config/rc/vim/basic.vim

"preview docstrings窗口的位置.会用到plugin可能包括git和ycm
"在顶部弹出会导致当前的窗口跳跃,所以很不好.
set splitbelow

"自动加载
for f in split(glob('~/config/rc/vim/autoload/*.vim'), '\n')
    exe 'source' f
endfor

"自动加载
for f in split(glob('~/config/rc/vim/light/*.vim'), '\n')
    exe 'source' f
endfor

"按照文件类型的特殊设定,需要后置.
for f in split(glob('~/config/rc/vim/filetype/*.vim'), '\n')
    exe 'source' f
endfor


