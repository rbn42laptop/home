
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ycm
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"似乎ycm整合了jedi,但是我没有配置过jedi,所以暂且放这里.jedi可能可以提供更详细的python配置.
let g:jedi#completions_enabled = 0
"JavaSearch 查询定义的方法,类 map到<C-]>
"2016-07-22 17:11:26 Fri NZST
"原来ycm的goto跳跃这么方便,之前一直都没发现,而去用ctag,真是太浪费了.
autocmd FileType python nnoremap <C-]> :YcmCompleter GoToDefinition<CR>
