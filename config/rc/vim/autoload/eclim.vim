
let g:EclimCompletionMethod = 'omnifunc'

"Thu 26 May 2016 05:05:48 AM NZST
"""""""""""""""""eclim
"选择field后，调用JavaGet JavaSet JavaGetSet JavaConstructor
"Java 执行 可以map到F2
autocmd FileType java nnoremap <silent> <buffer> <F2> :Java<cr>
"JavaCorrect错误补全 这个需要map,很常用
"JavaFormat 格式化 没有F4好用
"JavaSearch 查询定义的方法,类 map到<C-]>
autocmd FileType java nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>
"JavaRename abc 重命名 会用到 
"JavaMove abc
"JavaDocComment生成注释 会用到
"JavaDocSearch 查找doc,jdk的部分会打开浏览器 JavaDocPreview
"JavaCallHierarchy 查询调用的位置 挺有用
"JavaImport 引用补全 JavaImportOrganize 很常用
"以上命令限定java文件可用
"VimSettings配置eclim
"WorkspaceSettings配置eclimd
"只能用于project中
autocmd FileType python nnoremap <silent> <buffer> <cr> :PythonSearchContext<cr>

