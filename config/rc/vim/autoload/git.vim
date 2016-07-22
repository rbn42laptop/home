
"Plugin 'tpope/vim-fugitive'             "F9 git相关
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

nnoremap <F9> :Gstatus<cr>
