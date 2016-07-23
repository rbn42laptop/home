"if has("vms")
"  set nobackup
"else
"  set backup
"endif

"生成一次改动的backup,会有用处吗?
"不过凭空多一个文件也很麻烦,虽然ls可以规避掉,但是改其他人的git的时候又会多出一种需要ignore的文件了.
"set nobackup
"
"backup用到的频率很小,按照我现在的操作习惯,很多东西都会留备份,完全不留痕迹的消除一部分数据的可能性是很小的,
"不过还是有些场合会用到的.但是放在同目录会比较麻烦,所以就放到专用的目录去,就好像回收站机制一样.
set backup
set backupdir=~/del

"增量备份,每次ESC退出insert模式的时候设定备份的timestamp
"ESC这个时间点选的并不足够好,以后想到好的可以改.
fun! InitBex()
    let myvar = strftime("%y%m%d_%H%M%S")
    let myvar = "set backupext=_".myvar
    execute myvar
    echo myvar
endfun
inoremap <Esc> <Esc>:call InitBex()<CR>
