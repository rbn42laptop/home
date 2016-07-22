

"CTAGS
set tags=.tags,~/.vim/tags
autocmd FileType python silent! !ctags -R -f .tags *.py 
autocmd FileType c silent! !ctags -R -f .tags *.c  
autocmd FileType h silent! !ctags -R -f .tags *.h  
autocmd FileType cpp silent! !ctags -R -f .tags *.cpp  
"auto run ctags"
"au BufWritePost *.c,*.cpp,*.h,*.py silent! !ctags *.py *.c *.cpp *.h *.java -R &
"ctags -R -o ~/.vim/tags  /usr/include /usr/local/include 
" TagList Plugin Configuration
let Tlist_Ctags_Cmd='ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
"用了平铺还是不要开着占地方
"let Tlist_Close_On_Select = 0
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
map <F7> :TlistToggle<CR>
fun! Opentaglist() "有时候需要taglist开着不关.
    exec("TlistOpen")
    exec("map <F7> :TlistOpen<CR>") 
endfun
map <C-F7> :let Tlist_Close_On_Select = 0<CR>:call Opentaglist()<CR>
"include
set path+=/usr/*/include
set path+=/usr/include/*
set path+=/usr/local/include/*


"F7 taglist
"这个插件会在空间不够的时候resize,但是qml没有处理过resize问题,所以会直接导致view尺寸不对而无法融入layout,
"解决办法要么是添加resize事件,要么是防止F7resize
let Tlist_Inc_Winwidth=0
"关于resize问题,qtermwidget似乎有事件出发,不过我怀疑qmltermwidget没有开放这个事件
"其实是有的,不过还不知道如何依靠它联动resize parent

