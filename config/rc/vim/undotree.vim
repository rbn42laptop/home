
"Plugin 'mbbill/undotree'                "F6 不能和nerdtree共用,会打乱布局.
"和普通意义的undo相比,我想这个plugin最大的用处是,undo之后修改,不会覆盖掉原本的redo的版本.
"早期写代码的时候,我经常会碰到redo被覆盖的问题,但是现在习惯上就很避免出现这种情况了,覆盖会更谨慎,所以感觉上暂时好像很难把这个plugin引入工作流.

nnoremap <F6> :NERDTreeClose<CR>:UndotreeToggle<cr>
