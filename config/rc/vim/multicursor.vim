"Plugin 'terryma/vim-multiple-cursors'   
"Ctrl+N 多光标,很少用,绝大多数批量编辑情况可以全局替换,更便利的是IDE的refactoring,少数情况需要python.夹在这两个极端中间的极少数情况可能可以用Ctrl+N,但是实在基本没用过
"用法1，定位到關鍵詞，ctrl+n 匹配要修改的部分 i 切入
"用法2，v選擇多行後，ctrl+n 然後 i 切入

"用vim做查找/替换/refactor太麻烦了,还是交给gedit和IDE吧,反正命名问题一般是写完代码后期完善时候的事情,用vim的时候可以容忍下


let g:multi_cursor_exit_from_insert_mode = 0
"默认的<C-n>一次之选择一个,不过感觉一般都是需要一次全部选中
"需要先按*截取关键词
nnoremap <C-j> :MultipleCursorsFind <C-R>/<CR>
vnoremap <C-j> :MultipleCursorsFind <C-R>/<CR>

