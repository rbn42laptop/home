"插件

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
Plugin 'tpope/vim-fugitive'             "F9 git
if enable_airline
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
endif 
Plugin 'mbbill/undotree'                "F6 
"orgmode
Plugin 'jceb/vim-orgmode'
"Plugin 'vim-orgmode'
Plugin 'speeddating.vim'
Plugin 'utl.vim'
Plugin 'Tagbar'

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
