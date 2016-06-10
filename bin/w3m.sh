#!/bin/bash


vi "+W3m http://$1" \
    "+map h h" \
    "+map q <Esc>:qa!<CR>"\
    "+map <C-o> :call w3m#Back()<CR>"\
    "+map <C-i> :call w3m#Forward()<CR>"
