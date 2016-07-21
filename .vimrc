set nocompatible              " be iMproved, required
filetype off                  " required

let enable_airline=1
"无效,需要其他办法来按文件类型激活plugin
"autocmd FileType python let enable_airline=1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Useful ones
Plugin 'gmarik/Vundle.vim'              "包管理
Plugin 'scrooloose/nerdtree'            "F3 文件tree视图
"平时实际上不会用到nerdtree,很多时候ctrlp更方便.
"除了有的时候需要statusline的时候,会用nerdtree来冲窗口数目.
"但是ctrlp似乎无法支持中文.

Plugin 'Chiel92/vim-autoformat'         "F4 格式化
"包括python c c++ js html css,github上有说明需要额外安装多少软件.
Plugin 'taglist.vim'                    "F7 ctags插件
Plugin 'ctrlpvim/ctrlp.vim'             " Ctrl+P 快速文件查找

"Plugin 'xolox/vim-misc'
"Plugin 'easytags.vim'

Plugin 'easymotion/vim-easymotion'      "主要用法,在普通motion命令前加上 ,,
Plugin 'Valloric/YouCompleteMe'         "代码补全
Plugin 'VOoM'                           "tex tree视图
Plugin 'terryma/vim-multiple-cursors'   
"Ctrl+N 多光标,很少用,绝大多数批量编辑情况可以全局替换,更便利的是IDE的refactoring,少数情况需要python.夹在这两个极端中间的极少数情况可能可以用Ctrl+N,但是实在基本没用过
"用法1，定位到關鍵詞，ctrl+n 匹配要修改的部分 i 切入
"用法2，v選擇多行後，ctrl+n 然後 i 切入

"用vim做查找/替换/refactor太麻烦了,还是交给gedit和IDE吧,反正命名问题一般是写完代码后期完善时候的事情,用vim的时候可以容忍下


Plugin 'scrooloose/syntastic'           "已知的用处是检查代码错误
Plugin 'rking/ag.vim'                   "好像是跨文件搜索用的  sudo apt install silversearcher-ag
Plugin 'marijnh/tern_for_vim'           "好像是javascript相关的refactor,ycm有集成它作为代码提示.
Plugin 'scrooloose/nerdcommenter'       "代码注释,没怎么用过

Plugin 'tpope/vim-fugitive'             "F9 git相关
"Gedit Gsplit Gstatus,显示git status,并且提供快捷跳转.
" Press - to add/reset a file's changes, or p to add/reset --patch. 
" And guess what :Gcommit does!
" - 号可以添加修改或者消除未commit的修改.消除我不怎么用到,添加比较常用.
" commit还是命令行做比较好,但是reset功能很方便.
" Gread 可以起到checkout的作用,读取未改动的原文件到buffer.
" Gvdiff Gdiff 同Gread,读取diff进行对比.
" Gbrowse 打开github上的文件. v模式下可以直接跳转到勾选部分页面.
" 感觉都很有用,但是可以配置的按键也不多,所以暂且作为命令记在这里,以后根据使用频率再绑定按键.
" Glog查看提交记录,Ggrep 同git grep,我不认识.Gblame 同git blame,不认识.
" Gmove Gremove,还是命令行使用比较安心.

Plugin 'peterhoeg/vim-qml' "qml高亮

if enable_airline
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
endif 

Plugin 'mbbill/undotree'                "F6 不能和nerdtree共用,会打乱布局.
"和普通意义的undo相比,我想这个plugin最大的用处是,undo之后修改,不会覆盖掉原本的redo的版本.
"早期写代码的时候,我经常会碰到redo被覆盖的问题,但是现在习惯上就很避免出现这种情况了,覆盖会更谨慎,所以感觉上暂时好像很难把这个plugin引入工作流.

"Plugin 'ivanov/vim-ipython'

"Plugin 'tpope/vim-pathogen'            "另一个包管理
"Plugin 'yuratomo/w3m.vim'              "w3m插件

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

"Plugin 'glsl.vim' "glsl高亮
"Plugin 'dcbaker/vim-arb_assembly' "arb高亮?

"ycm有整合jedi
"Plugin 'davidhalter/jedi-vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'klen/python-mode'
"Plugin 'python-rope/ropevim'
"Plugin 'LaTeX-Box-Team/LaTeX-Box'
"Plugin 'ChesleyTan/wordCount.vim'


"Plugin 'JuliaLang/julia-vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
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

"if has("vms")
"  set nobackup
"else
"  set backup
"endif

"生成一次改动的backup,会有用处吗?
"不过凭空多一个文件也很麻烦,ls可以规避掉,但是改其他人的git的时候又会多出一种需要ignore的文件了.
set nobackup

"#minibuf
"不记得这是什么东西了.
  let g:miniBufExplMapWindowNavVim = 1
  let g:miniBufExplMapWindowNavArrows = 1
  let g:miniBufExplMapCTabSwitchBufs = 1
  let g:miniBufExplModSelTarget = 1 

" NERD_tree config
" nerdtree的配置还挺复杂的.
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
"用了平铺还是不要开着占地方
"let NERDTreeQuitOnOpen=0
map <F3> :UndotreeHide<cr>:NERDTreeToggle<CR>


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
fun! Opentaglist() "有时候需要taglist开着不关.
    exec("TlistOpen")
    exec("map <F7> :TlistOpen<CR>") 
endfun
map <C-F7> :let Tlist_Close_On_Select = 0<CR>:call Opentaglist()<CR>
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
"这个插件似乎配置很复杂.不过我好像只需要高亮.

""W3m
"似乎同样配置很复杂

""Rpdf
"pdf转换阅读的相关命令,没什么用处.

"vim和系统clipboard互动,需要编译支持,所以要安装gvim
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

"vim有一些怎么在normal模式下应对caplock的方案,但是处理似乎相当麻烦,还不如一开始就不要开启caplock

"insert date
nnoremap <F5> "=strftime("%F %T %a %Z")<CR>P
inoremap <F5> <C-R>=strftime("%F %T %a %Z")<CR>

"Fri 08 Apr 2016 07:41:43 NZST
autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif
autocmd FileType text set nonu  

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

"Wed 27 Apr 2016 15:51:45 NZST
set t_Co=256

"没觉得powerline比airline有什么优势.
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

"还是关掉比较好,因为一般来说,输出结果是需要和代码做对比的,所以需要一个独立窗口来放置输出.这样这个键就很少用到,因此会忘掉它的功能,所以平时按到反而都是无意的误触.
"autocmd FileType python nnoremap <buffer> <F2> :call CallInterpreter()<CR>
"autocmd FileType bash nnoremap <buffer> <F2> :call CallInterpreter()<CR>

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

"默认的<C-n>一次之选择一个,不过感觉一般都是需要一次全部选中
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

"preview docstrings窗口的位置.
"在顶部弹出会导致当前的窗口跳跃,所以很不好.
set splitbelow

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

nnoremap <F6> :NERDTreeClose<CR>:UndotreeToggle<cr>
nnoremap <F9> :Gstatus<cr>

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

"新建tab,打开nerdtree.还是打开ctrlp更好?
"noremap <C-T> :tabnew<cr>
"t键原本是干什么用的?不过反正我不用,所以可以直接映射t.
"有机会查下原本t键的作用.上面的ctrlt就关掉了,养成一个按ctrl的习惯总觉的很不舒服,所以还是关掉把这个习惯改回去比较好.嗯,不过firefox是ctrlt,或许vimfx那里我们可以改成t,已经是了.
nnoremap t :tabnew<cr>
"打开多个文件的时候显示为tab
tab all

":NERDTreeToggle<CR>

"tabbar 基本上和statusline的配置差不多
"airline似乎不会干涉这部分.
hi tablineFill ctermbg=None cterm=underline
hi TabLine ctermbg=None cterm=underline
hi TabLineSel ctermbg=None cterm=bold

"对taglist左侧tree标记有效.
hi foldcolumn ctermbg=None

"noremap <C-PageUp> gt
"noremap <C-PageDown> gt

"查找选中的部分
vnoremap / y/<C-R>"<CR>
