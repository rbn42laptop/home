"vim和系统clipboard互动,需要编译支持,所以要安装gvim
"set clipboard=unnamed
"auto to clipboard under x11
"apt install vim-gnome#vim with clipboard feature
set clipboard=unnamedplus


"替换现在其实比较熟练用multicursor来做,而且multicursor是交互式的,过程中出错也比replace更方便改动,唯有性能较差.

"默认的<C-F><C-H>没有什么使用印象,所以放在这里应该没有什么问题.
"查找选中的部分
vnoremap / y/<C-R>"<CR>
"查找粘贴板
nnoremap <C-F> /<C-R>"<CR>
"替换选中部分.
vnoremap <C-H> y:%s/<C-R>"//g<Left><Left>
"替换粘贴板.
nnoremap <C-H> :%s/<C-R>"//g<Left><Left>
