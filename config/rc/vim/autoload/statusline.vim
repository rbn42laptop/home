

"Wed 27 Apr 2016 15:51:45 NZST
set t_Co=256

"没觉得powerline比airline有什么优势.
""pip install powerline-status --user
"set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim/
"set laststatus=2
"set t_Co=256


"根据terminal配色不同这里的White不会改变,所以无法依赖.
"hi NonText ctermfg=blue cterm=None
"vsplit分隔符
"\ |-││││─━━━━━━━━────────────

"白色透明方案,vim不允许NC窗口和当前窗口状态完全一样,所以会有^和=作为填充符.
"hi StatusLine ctermbg=None cterm=None
"hi StatusLineNC ctermbg=None cterm=None

"#set ruler
"autocmd FileType python set rulerformat=%25(%P\ %l,%c%V\ %{SyntasticStatuslineFlag()}\ %#warningmsg#%)

if enable_airline
    "airline 
    "set laststatus=2
    "开启powerline
    let g:airline_powerline_fonts = 0
    "theme的颜色模式难以辨认,所以没法改动.
    let g:airline_theme='th'
    let g:airline_left_sep=' ' "'>'
    let g:airline_right_sep=' ' "'<'
    "let g:airline_skip_empty_sections = 1
    "
    ""airline方案,airline暂且的用处是可以配合syntastic使用,显示encode格式
    ""airline下制表符显示不正确.
    "let g:airline_theme='luna'
    hi VertSplit ctermbg=None cterm=NONE
    set fillchars+=vert:\│
    "#|
    "┃
    "│qterm下用不了,
    hi StatusLine ctermfg=Cyan ctermbg=None cterm=underline
    hi StatusLineNC ctermbg=None cterm=underline
else
    hi StatuesLine None
    hi clear Statusline
    "制表符方案比较好,能兼容tty
    hi VertSplit ctermfg=Blue ctermbg=None cterm=NONE
    set fillchars+=vert:\│
    hi StatusLine ctermfg=Green ctermbg=None cterm=None
    hi StatusLineNC ctermfg=Blue ctermbg=None cterm=None
    set fillchars+=stl:─
    set fillchars+=stlnc:─

endif 

function! EnableStatusLine()
    set fillchars+=stl:\ 
    set fillchars+=stlnc:\ 
    "syntastic
    "下面的配置手动好像比较难处理,似乎和airline配合比较好用.
    " start of default statusline
    set statusline=%f\ %h%w%m%r\ 
    " Syntastic statusline
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    " 应该就是这里导致airline无法使用box符号.
    set statusline+=%=
    " end of default statusline (with ruler)
    set statusline+=%(%l,%c%V\ %=\ %P%)
endfunction

if enable_airline
else
    "autocmd FileType python call EnableStatusLine()
    "call EnableStatusLine()
endif
"underline方案
"hi StatusLine ctermfg=Green ctermbg=None cterm=underline
"hi StatusLineNC ctermfg=Blue ctermbg=None cterm=underline
"set fillchars+=stl:\ 
"set fillchars+=stlnc:\ 

"let g:airline_theme='th'
"set fillchars+=stl:-
"set fillchars+=stlnc:-
"hi VertSplit ctermfg=None ctermbg=None cterm=NONE
"set fillchars+=vert:\|

