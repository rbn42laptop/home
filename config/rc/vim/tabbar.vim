"新建tab,打开nerdtree.还是打开ctrlp更好?
"noremap <C-T> :tabnew<cr>
"t键原本是干什么用的?不过反正我不用,所以可以直接映射t.
"有机会查下原本t键的作用.上面的ctrlt就关掉了,养成一个按ctrl的习惯总觉的很不舒服,所以还是关掉把这个习惯改回去比较好.嗯,不过firefox是ctrlt,或许vimfx那里我们可以改成t,已经是了.
nnoremap t :tabnew<cr>
"打开多个文件的时候显示为tab
tab all
"tabbar 基本上和statusline的配置差不多
"airline似乎不会干涉这部分.
hi tablineFill ctermbg=None cterm=underline
hi TabLine ctermbg=None cterm=underline
hi TabLineSel ctermbg=None cterm=bold

"对taglist左侧tree标记有效.
hi foldcolumn ctermbg=None
