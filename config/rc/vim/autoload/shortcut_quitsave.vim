"save and quit
"映射s而不是ctrl s,因为后者是命令行分配作为kill指令的按键.
map q :quit<CR>

nnoremap s :w<CR>
"现在主要是autoformat会调用autocmd,有些文件,主要是别人的代码不需要autoformat.
fun! DisableAutoSaveCmd()
    exec("nnoremap s :noautocmd w<CR>")
    exec("nnoremap S :noautocmd w<CR>")
endfun
nnoremap S :call DisableAutoSaveCmd()<CR>:noautocmd w<CR>
