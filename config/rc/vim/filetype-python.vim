
"""""""""""""""""""

"Thu 26 May 2016 06:36:41 AM NZST
"反正这个功能不完善,只能写简单的东西的时候用,其他时候主要还是要靠独立的run.sh
"中级的能力或许可以靠vim-ipython实现,不过感觉还是run.sh的结构清晰,所以更方便
fun! CallInterpreter()
    if match( getline(1) , '^\#!') == 0 
        "这里欠缺的问题:最好是有一个独立的window
        "tag,专门用来输出结果,可以简单关闭,没有reload提示,modified提示
        exec("w")
        exec ("!".getline(1)[2:]." % ")
        "exec("split")
        "exec("wincmd j")
        "exec ("silent !".getline(1)[2:]." % > /tmp/vimexec")
        "exec("edit  /tmp/vimexec")
        "exec("resize 4")
        "exec("r  /tmp/vimexec")
        "exec("new")
        "exec("map q :q!<CR>")
    endif
endfun

"还是关掉比较好,因为一般来说,输出结果是需要和代码做对比的,所以需要一个独立窗口来放置输出.这样这个键就很少用到,因此会忘掉它的功能,所以平时按到反而都是无意的误触.
"autocmd FileType python nnoremap <buffer> <F2> :call CallInterpreter()<CR>
"autocmd FileType bash nnoremap <buffer> <F2> :call CallInterpreter()<CR>

