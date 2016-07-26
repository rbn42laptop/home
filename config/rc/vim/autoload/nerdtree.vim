"Plugin 'scrooloose/nerdtree'            "F3 文件tree视图
"平时实际上不会用到nerdtree,很多时候ctrlp更方便.
"除了有的时候需要statusline的时候,会用nerdtree来冲窗口数目.
"但是ctrlp似乎无法支持中文.

" NERD_tree config
" nerdtree的配置还挺复杂的.
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
"用了平铺还是不要开着占地方
"let NERDTreeQuitOnOpen=0



"""""""""""""""""""""""""""""""""""""""""""""""""""
map <F3> :UndotreeHide<cr>:NERDTreeToggle<CR>

fun! Opennerdtree() "有时候需要开着不关.
    exec("NERDTreeFocus")
    exec("map <F3> :NERDTreeFocus<CR>") 
endfun
map <C-F3> :let NERDTreeQuitOnOpen=0<CR>:call Opennerdtree()<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""
"自动关闭nerdtree的脚本.不过
""似乎对nerd以外的buffer也有效.
function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction

autocmd WinEnter * call NERDTreeQuit()

":NERDTreeToggle<CR>

