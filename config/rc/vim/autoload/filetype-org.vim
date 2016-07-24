"很多都未实现,所以可能还是要用emacs
let g:org_heading_shade_leading_stars = 1
autocmd filetype org nmap <m-left> <<
autocmd filetype org nmap <m-right> >>
"这些复杂组合键,现在版本的qterm无法捕捉
autocmd filetype org nmap <m-s-left> <[[
autocmd filetype org nmap <m-s-right> >]]
autocmd filetype org nmap <m-up> m[[
autocmd filetype org nmap <m-down> m]]

autocmd FileType org set nonu  

"autocmd FileType org hi NonText ctermfg=bg

