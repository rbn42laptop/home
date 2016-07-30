"save and quit
"映射s而不是ctrl s,因为后者是命令行分配作为kill指令的按键.
noremap q :quit<CR>

"原本宏按键映射到ctrl q,因为q很容易误触,进入宏模式,所以改成组合键.
"<C-q>a 进入录制模式, <C-q>结束, @a调用宏.
"因为multicursor对大数据量的性能很差,所以还是会用到宏
noremap <C-q> q

nnoremap s :w<CR>
"现在主要是autoformat会调用autocmd,有些文件,主要是别人的代码不需要autoformat.
fun! DisableAutoSaveCmd()
    exec("nnoremap s :noautocmd w<CR>")
    exec("nnoremap S :noautocmd w<CR>")
endfun
nnoremap S :call DisableAutoSaveCmd()<CR>:noautocmd w<CR>
