let myvimrc1=$MYVIMRC
let myvimrc2=$HOME."/.vimrc"

if myvimrc1==myvimrc2 
    source ~/config/rc/vim/transparent.vim
else
    source $MYVIMRC
endif
