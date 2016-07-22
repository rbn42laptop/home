
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ycm
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"似乎ycm整合了jedi,但是我没有配置过jedi,所以暂且放这里.jedi可能可以提供更详细的python配置.
let g:jedi#completions_enabled = 0
"虽然archlinux中代码提示的确是来自python3,
"但是如果不指明下面给的变量,goto跳跃给出的仍然是python2
"这个path位置在archlinux中是python3
let g:ycm_python_binary_path = '/usr/bin/python'
"JavaSearch 查询定义的方法,类 map到<C-]>
"2016-07-22 17:11:26 Fri NZST
"原来ycm的goto跳跃这么方便,之前一直都没发现,而去用ctag,真是太浪费了.
"这种覆盖<C-]>的方式并太好,似乎会连带引向同一个vim中的其他文件类型.
autocmd FileType python nnoremap <C-]> :YcmCompleter GoTo<CR>
"autocmd FileType python nnoremap <C-]> :YcmCompleter GoToDefinition<CR>
"很有用的命令,暂且不知道放哪里合适.
"autocmd FileType python nnoremap <C-]> :YcmCompleter GoToReferences<CR>
"autocmd FileType python nnoremap <C-]> :YcmCompleter GetDoc<CR>

"home目录准备了一份基础的.tern-config配置,调用其他类库的更详细的配置参见 help ycm
autocmd FileType javascript nnoremap <C-]> :YcmCompleter GoTo<CR>
"autocmd FileType javascript nnoremap <C-]> :YcmCompleter GetType<CR>
"autocmd FileType javascript nnoremap <C-]> :YcmCompleter RefactorRename 
"
"
autocmd FileType c nnoremap <C-]> :YcmCompleter GoTo<CR>
"autocmd FileType c nnoremap <C-]> :YcmCompleter FixIt<CR>

autocmd FileType cpp nnoremap <C-]> :YcmCompleter GoTo<CR>


"The *:YcmToggleLogs* command
"The *:YcmDebugInfo* command
"The *:YcmShowDetailedDiagnostic* command
