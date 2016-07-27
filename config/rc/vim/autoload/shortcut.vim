"一些独立的按键映射
"
":map 找出现有的映射

"insert date
nnoremap <F5> "=strftime("%F %T %a %Z")<CR>P
inoremap <F5> <C-R>=strftime("%F %T %a %Z")<CR>

noremap h <BS>
noremap l <space>
noremap j gj
noremap k gk

set mouse=a
"会连带影响鼠标点选进入visual模式
noremap <ScrollWheelUp> kkk
noremap <ScrollWheelDown> jjj

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
"
"不清楚功能的键,为了避免误触.
noremap H hhh
noremap L lll
noremap J jjj
noremap K kkk
