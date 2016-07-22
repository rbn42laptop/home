
noremap <F4> :Autoformat<CR><CR>
"暂时关掉，改其他人的项目的时候，开着不方便
"python需要pep8
autocmd BufWritePre *.py :Autoformat
"python以外的代码很多情况下都是别人写的,所以不适合开启.
"c家族需要clang
"autocmd BufWritePre *.cpp :Autoformat
"autocmd BufWritePre *.cxx :Autoformat
"autocmd BufWritePre *.c :Autoformat
"yaourt -S js-beautify #包含css和html
"autocmd BufWritePre *.js :Autoformat

"let g:formatprg_glsl = "astyle"
"let g:formatters_python = ['autopep8']
let g:autoformat_verbosemode = 1

