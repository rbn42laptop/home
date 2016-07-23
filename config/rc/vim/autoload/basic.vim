"以下配置抄来的,不知道具体用途.
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

" To ignore plugin indent changes, instead use:
filetype plugin indent on

"execute pathogen#infect()
syntax on

inoremap <Nul> <C-x><C-o>

"if has("vms")
"  set nobackup
"else
"  set backup
"endif

"生成一次改动的backup,会有用处吗?
"不过凭空多一个文件也很麻烦,ls可以规避掉,但是改其他人的git的时候又会多出一种需要ignore的文件了.
set nobackup

