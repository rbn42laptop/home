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

Plugin 'scrooloose/nerdtree'            "F3 

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

Plugin 'scrooloose/syntastic'           "已知的用处是检查代码错误
Plugin 'rking/ag.vim'                   "好像是跨文件搜索用的  sudo apt install silversearcher-ag
Plugin 'marijnh/tern_for_vim'           "好像是javascript相关的refactor,ycm有集成它作为代码提示.
Plugin 'scrooloose/nerdcommenter'       "代码注释,没怎么用过

Plugin 'peterhoeg/vim-qml' "qml高亮

Plugin 'tpope/vim-fugitive'             "F9 

if enable_airline
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
endif 

Plugin 'mbbill/undotree'                "F6 

"直接用的时候调用的是python2,不知如何改到python3
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

"latex
map <F8> :Voom latex<CR>
"这个插件似乎配置很复杂.不过我好像只需要高亮.

"已知仅有motion用到了这个键
let mapleader=","


"preview docstrings窗口的位置.会用到plugin可能包括git和ycm
"在顶部弹出会导致当前的窗口跳跃,所以很不好.
set splitbelow

"自动加载
for f in split(glob('~/config/rc/vim/autoload/*.vim'), '\n')
    exe 'source' f
endfor
