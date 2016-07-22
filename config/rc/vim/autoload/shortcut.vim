"一些独立的按键映射

"insert date
nnoremap <F5> "=strftime("%F %T %a %Z")<CR>P
inoremap <F5> <C-R>=strftime("%F %T %a %Z")<CR>



map h <BS>
map l <space>
map j gj
map k gk

set mouse=a
"会连带影响鼠标点选进入visual模式
map <ScrollWheelUp> kkk
map <ScrollWheelDown> jjj

"save and quit
"映射s而不是ctrl s,因为后者是命令行分配作为kill指令的按键.
map q :quit<CR>
nnoremap s :w<CR>
nnoremap S :w<CR>

"Thu 26 May 2016 05:05:53 AM NZST
"vim fold
"z+a "z+c z+o
"
"从rofi抄来的按键约定,挺顺手的.其他<C-h><C-m>,terminal可以自行识别.
"nnoremap <C-e> $
"nnoremap <C-a> ^
"vnoremap <C-e> $
"vnoremap <C-a> ^
noremap <C-e> <End>
noremap <C-a> <Home>
noremap! <C-e> <End>
noremap! <C-a> <Home>
"nmap - Display normal mode maps
"imap - Display insert mode maps
"vmap - Display visual and select mode maps
"smap - Display select mode maps
"xmap - Display visual mode maps
"cmap - Display command-line mode maps
"omap - Display operator pending mode maps
"noremap <C-PageUp> gt
"noremap <C-PageDown> gt

