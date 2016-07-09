set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Useful ones
Plugin 'gmarik/Vundle.vim'              "包管理
Plugin 'scrooloose/nerdtree'            "F3 文件tree视图
Plugin 'Chiel92/vim-autoformat'         "F4 格式化
Plugin 'taglist.vim'                    "F7 ctags插件
Plugin 'ctrlpvim/ctrlp.vim'                 " Ctrl+P 快速文件查找

"Plugin 'xolox/vim-misc'
"Plugin 'easytags.vim'

Plugin 'easymotion/vim-easymotion'      "主要用法,在普通motion命令前加上 ,,
Plugin 'Valloric/YouCompleteMe'         "代码补全
Plugin 'VOoM'                           "tex tree视图
Plugin 'terryma/vim-multiple-cursors'   "Ctrl+N 多光标,很少用,绝大多数批量编辑情况可以全局替换,更便利的是IDE的refactoring,少数情况需要python.夹在这两个极端中间的极少数情况可能可以用Ctrl+N,但是实在基本没用过
"用法1，定位到關鍵詞，ctrl+n 匹配要修改的部分 i 切入
"用法2，v選擇多行後，ctrl+n 然後 i 切入

"用vim做查找/替换/refactor太麻烦了,还是交给gedit和IDE吧,反正命名问题一般是写完代码后期完善时候的事情,用vim的时候可以容忍下

Plugin 'scrooloose/syntastic'
Plugin 'rking/ag.vim'                   "好像是跨文件搜索用的  sudo apt install silversearcher-ag
Plugin 'marijnh/tern_for_vim'           "好像是javascript相关的refactor
Plugin 'scrooloose/nerdcommenter'       "代码注释,没怎么用过
Plugin 'tpope/vim-fugitive'             "好像是git相关的

Plugin 'peterhoeg/vim-qml'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Plugin 'ivanov/vim-ipython'

"Plugin 'tpope/vim-pathogen'            "另一个包管理
Plugin 'yuratomo/w3m.vim'              "w3m插件

"snipmate相关4个plugin
"似乎可以用来补全html tag,不兼容ycm.
"不过我怎么都没能让它运作.
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Optional:
"Plugin 'honza/vim-snippets'

"似乎很便利的快速html编辑,需要它的原因应该是html中冗余字符太多了.
"需要安装独立的excutable.
"https://github.com/rstacruz/sparkup
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}           

"Plugin 'glsl.vim'
"Plugin 'dcbaker/vim-arb_assembly'

"Plugin 'davidhalter/jedi-vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'klen/python-mode'
"Plugin 'python-rope/ropevim'
"Plugin 'ctrlp.vim'
"Plugin 'LaTeX-Box-Team/LaTeX-Box'
"Plugin 'ChesleyTan/wordCount.vim'


"Plugin 'JuliaLang/julia-vim'
"Plugin 'mattn/emmet-vim'
"#Plugin 'Valloric/YouCompleteMe'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"#Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set nois
set hls
set incsearch
set autoindent
"#set ruler
"set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set showcmd
set number

set showmatch

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
"set textwidth=79

filetype plugin indent on

"execute pathogen#infect()
syntax on

"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd FileType cpp set omnifunc=cppcomplete#CompleteCPP



autocmd FileType tex setlocal linebreak " spell spelllang=en_us
autocmd FileType tex set nonu  spell spelllang=en_us


au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 
inoremap <Nul> <C-x><C-o>

if has("vms")
  set nobackup
else
  set backup
endif

set nobackup

"#minibuf

  let g:miniBufExplMapWindowNavVim = 1
  let g:miniBufExplMapWindowNavArrows = 1
  let g:miniBufExplMapCTabSwitchBufs = 1
  let g:miniBufExplModSelTarget = 1 
" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
"用了平铺还是不要开着占地方
"let NERDTreeQuitOnOpen=0
map <F3> :NERDTreeToggle<CR>

noremap <F4> :Autoformat<CR><CR>
"暂时关掉，改其他人的项目的时候，开着不方便
autocmd BufWritePre *.py :Autoformat

"let g:formatprg_glsl = "astyle"
"let g:formatters_python = ['autopep8']
let g:autoformat_verbosemode = 1

"CTAGS
set tags=.tags,~/.vim/tags
autocmd FileType python silent! !ctags -R -f .tags *.py 
autocmd FileType c silent! !ctags -R -f .tags *.c  
autocmd FileType h silent! !ctags -R -f .tags *.h  
autocmd FileType cpp silent! !ctags -R -f .tags *.cpp  
"auto run ctags"
"au BufWritePost *.c,*.cpp,*.h,*.py silent! !ctags *.py *.c *.cpp *.h *.java -R &
"ctags -R -o ~/.vim/tags  /usr/include /usr/local/include 
" TagList Plugin Configuration
let Tlist_Ctags_Cmd='ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
"用了平铺还是不要开着占地方
"let Tlist_Close_On_Select = 0
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
map <F7> :TlistToggle<CR>
"include
set path+=/usr/*/include
set path+=/usr/include/*
set path+=/usr/local/include/*


"F7 taglist
"这个插件会在空间不够的时候resize,但是qml没有处理过resize问题,所以会直接导致view尺寸不对而无法融入layout,
"解决办法要么是添加resize事件,要么是防止F7resize
let Tlist_Inc_Winwidth=0
"关于resize问题,qtermwidget似乎有事件出发,不过我怀疑qmltermwidget没有开放这个事件
"其实是有的,不过还不知道如何依靠它联动resize parent


"latex
map <F8> :Voom latex<CR>
"
"
"
"" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
"" can be called correctly.
"set shellslash
"
"" IMPORTANT: grep will sometimes skip displaying the file name if you
"" search in a singe file. This will confuse Latex-Suite. Set your grep
"" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*
"
"
"" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
"" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'
"
"let g:Tex_DefaultTargetFormat = 'pdf'
"let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
"let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'
"let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
"let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
"let g:Tex_ViewRule_pdf='xpdf' 
""let g:Tex_ViewRule_pdf='evince' 
"
""W3m
"
"let g:w3m#external_browser = 'firefox'
"let g:w3m#homepage = "http://www.google.com"
"let g:w3m#hit_a_hint_key = 'f'
"let g:w3m#lang = 'en_US'
""Rpdf
":command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -
":command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78
""BEGIN_DEVASSISTANT_1
""Setting value devassistant to 0 will use your existing .vimrc file
""Setting value devassistant to 1 will use the vimrc defined by the devassistant feature
"
"let devassistant=0
"if devassistant==1
" :source 
"endif
"END_DEVASSISTANT_1


"set clipboard=unnamed
"auto to clipboard under x11
"apt install vim-gnome#vim with clipboard feature
set clipboard=unnamedplus
let g:multi_cursor_exit_from_insert_mode = 0

"word count
"set runtimepath+=$HOME/.vim/bundle/wordCount.vim
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:jedi#completions_enabled = 0
let mapleader=","
let g:EclimCompletionMethod = 'omnifunc'

"
"" Insert and command-line mode Caps Lock.
"" Lock search keymap to be the same as insert mode.
"set imsearch=-1
"" Load the keymap that acts like capslock.
"set keymap=insert-only_capslock
"" Turn it off by default.
"set iminsert=0
"
":highlight Cursor guifg=NONE guibg=Green
":highlight lCursor guifg=NONE guibg=Cyan
"
"
"" Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
"for c in range(char2nr('A'), char2nr('Z'))
"  execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
"  execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
"endfor
"
"" Kill the capslock when leaving insert mode.
"autocmd InsertLeave * set iminsert=0
"
"insert date
":nnoremap <F5> "=strftime("%c")<CR>P
"#:inoremap <F5> <C-R>=strftime("%c")<CR>
nnoremap <F5> "=strftime("%F %T %a %Z")<CR>P
inoremap <F5> <C-R>=strftime("%F %T %a %Z")<CR>

"
"
"Fri 08 Apr 2016 07:41:43 NZST
autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif
autocmd FileType text set nonu  

map h <BS>
map l <space>
map j gj
map k gk

"使用caps Lock代替ESC，如果是输入大量的大写时，可以先输入小写，然后选中用U改变 
"在终端中输入
"xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'



set mouse=a
"会连带影响鼠标点选进入visual模式
map <ScrollWheelUp> kkk
map <ScrollWheelDown> jjj

"save and quit
map q :quit<CR>
nnoremap s :w<CR>
nnoremap S :w<CR>
"nnoremap <C-S> :w<CR>
"inoremap <C-S> <ESC>:w<CR>
"map <C-S> 
"nnoremap <C-S-S> :w<CR>
"inoremap <C-S-S> <ESC>:w<CR>

"Wed 27 Apr 2016 15:51:45 NZST
"#hi StatusLine ctermbg=Black ctermfg=None
"hi StatuesLine None
"hi clear Statusline
"set statusline+=%{wordCount#WordCount()}
"set laststatus=2

"airline 
"set laststatus=2
let g:airline_powerline_fonts = 1
"let g:airline_theme='th'
let g:airline_theme='luna'

set t_Co=256

""pip install powerline-status --user
"set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim/
"set laststatus=2
"set t_Co=256


"Thu 26 May 2016 05:05:48 AM NZST
"""""""""""""""""eclim
"选择field后，调用JavaGet JavaSet JavaGetSet JavaConstructor
"Java 执行 可以map到F2
autocmd FileType java nnoremap <silent> <buffer> <F2> :Java<cr>
"JavaCorrect错误补全 这个需要map,很常用
"JavaFormat 格式化 没有F4好用
"JavaSearch 查询定义的方法,类 map到<C-]>
autocmd FileType java nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>
"JavaRename abc 重命名 会用到 
"JavaMove abc
"JavaDocComment生成注释 会用到
"JavaDocSearch 查找doc,jdk的部分会打开浏览器 JavaDocPreview
"JavaCallHierarchy 查询调用的位置 挺有用
"JavaImport 引用补全 JavaImportOrganize 很常用
"以上命令限定java文件可用
"VimSettings配置eclim
"WorkspaceSettings配置eclimd
"只能用于project中
autocmd FileType python nnoremap <silent> <buffer> <cr> :PythonSearchContext<cr>


"Thu 26 May 2016 05:05:53 AM NZST
"vim fold
"z+a "z+c z+o
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

autocmd FileType python nnoremap <buffer> <F2> :call CallInterpreter()<CR>
"autocmd FileType bash nnoremap <buffer> <F2> :call CallInterpreter()<CR>
"
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

"默认的<C-n>一次之选择一个,不过感觉一般都是需要一次全部选中,
"需要先按*截取关键词
nnoremap <C-j> :MultipleCursorsFind <C-R>/<CR>
vnoremap <C-j> :MultipleCursorsFind <C-R>/<CR>

"自动关闭fcitx zh
"这个功能和multi cursor 冲突
"function! Fcitx2en()
"  let l:a = system("fcitx-remote -c")
"endfunction
"autocmd InsertLeave * call Fcitx2en()
"

"在html上关掉ycm
"autocmd FileType html let b:ycm_largefile=1

"从rofi抄来的按键约定,挺顺手的.其他<C-h><C-m>,terminal可以自行识别.
nnoremap <C-e> $
nnoremap <C-a> ^
inoremap <C-e> <End>
inoremap <C-a> <Home>

"preview docstrings窗口的位置.
"在顶部弹出会导致当前的窗口跳跃,所以很不好.
set splitbelow

set fillchars+=vert:\ 
