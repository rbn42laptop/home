"ycm和不少东西冲突

"ycm与multiple cursor的兼容问题
" Experimentally integrate YouCompleteMe with vim-multiple-cursors, otherwise    
" the numerous Cursor events cause great slowness 
" (https://github.com/kristijanhusak/vim-multiple-cursors/issues/4)
"multiple cursors相关
function Multiple_cursors_before()                         
  let s:old_ycm_whitelist = g:ycm_filetype_whitelist   
  let g:ycm_filetype_whitelist = {}
endfunction                      
                                
function Multiple_cursors_after()
  let g:ycm_filetype_whitelist = s:old_ycm_whitelist
endfunction      


"自动关闭fcitx zh
"这个功能和multi cursor 冲突
"function! Fcitx2en()
"  let l:a = system("fcitx-remote -c")
"endfunction
"autocmd InsertLeave * call Fcitx2en()
"

"在html上关掉ycm
"autocmd FileType html let b:ycm_largefile=1
