" vim-airline companion theme of Luna
" (https://github.com/Pychimp/vim-th)

let g:airline#themes#th#palette = {}

let g:airline#themes#th#palette.accents = {
      \ 'red': [ '#ffffff' , '' , 231 , '' , '' ],
      \ }


let s:N1 = [ '#ffffff' , '#005252' , 231  , 36 ]
let s:N2 = [ '#ffffff' , '#003f3f' , 231 , 29 ]
let s:N3 = [ '#ffffff' , '#002b2b' , 231  , 23 ]


let s:I1 = [ '#ffffff' , '#789f00' , 231 , 106 ]
let s:I2 = [ '#ffffff' , '#003f3f' , 231 , 29  ]
let s:I3 = [ '#ffffff' , '#002b2b' , 231 , 23  ]
let g:airline#themes#th#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#789f00' , s:I1[2] , 106     , ''     ] ,
      \ }



let s:V1 = [ '#ffff9a' , '#ff8036' , 222 , 208 ]
let s:V2 = [ '#ffffff' , '#003f3f' , 231 , 29 ]
let s:V3 = [ '#ffffff' , '#002b2b' , 231  , 23  ]

let s:IA = [ '#4e4e4e' , '#002b2b' , 59 , 23 , '' ]

let g:airline#themes#th#palette.tabline = {
      \ 'airline_tab':  ['#2aa198', '#003f3f',  231, 29, ''],
      \ 'airline_tabsel':  ['#ffffff', '#2e8b57',  231, 36, ''],
      \ 'airline_tabtype':  ['#ffffff', '#005252',  231, 36, ''],
      \ 'airline_tabfill':  ['#ffffff', '#002b2b',  231, 23, ''],
      \ 'airline_tabmod':  ['#ffffff', '#780000',  231, 88, ''],
      \ }



if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#th#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#ffffff' , '#002b2b' , 231 , 23 , ''     ] ,
      \ [ '#ffffff' , '#005252' , 231 , 36 , ''     ] ,
      \ [ '#ffffff' , '#973d45' , 231 , 95 , ''     ] )

