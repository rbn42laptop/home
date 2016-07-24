"很多都未实现,所以可能还是要用emacs
"
"不过很多熟悉的东西在emacs中没有,需要重新配置.
"所以暂且先用些org的简单功能,等到足够熟悉之后,我们可以在emacs中重现这些配置.
"最初会想要用到的功能可能是TODO,虽然我还不熟悉.
"表格是个特殊的功能,不过不一定会用到,变换列表模式也不是必须的.
"此外缺乏autoformat也是个问题,但是我想还是先用熟了基本功能再说.
"
"对外输出转换格式的命令:OrgExportTo
let g:org_heading_shade_leading_stars = 1


"autocmd filetype org nmap <m-left> <<
"autocmd filetype org nmap <m-right> >>
"autocmd filetype org nmap <m-up> m[[
"autocmd filetype org nmap <m-down> m]]
"
""这些组合键,现在版本的qterm无法捕捉
"autocmd filetype org nmap <m-h> <<
"autocmd filetype org nmap <m-l> >>
"autocmd filetype org nmap <m-s-left> <[[
"autocmd filetype org nmap <m-s-right> >]]

"因为emacs组合键对terminal的兼容要求太高了,所以不如废弃掉,改成vim的风格
"尤其是其中的meta键
"HJKL的用处我都不知道,所以改掉问题也不大.
autocmd filetype org nmap H <<
autocmd filetype org nmap L >>
autocmd filetype org nmap <C-H> <[[
autocmd filetype org nmap <C-L> >]]
"KJ的映射是导航而不是改动,和HL不匹配,但是平级导航的用处比平级改动大
"相对来说纵向设定条目级别是新建条目的时候必须的操作,
"而平级改动则并不常见
"而纵向导航容易遗漏掉中间内容所以用处不及平级导航
"
"此外,纵向改动的时候,微调单一条目的影响范围小,而修改一整个branch的改动范围很大,容易出错,所以后者的按键复杂度应该超出前者
"而平级改动的时候,基本可以确定肯定是branch之间做交换,而不是单独的条目做交换.
autocmd filetype org nmap K {
autocmd filetype org nmap J }
autocmd filetype org nmap <C-K> m[[
autocmd filetype org nmap <C-J> m]]
autocmd filetype org nmap gu g{
"总体来说, HJKL gu 都是比较无害的按键,虽然不全是导航
"而<C-HJKL>都是改动范围很大的按键.

autocmd FileType org set nonu  

"autocmd FileType org hi NonText ctermfg=bg

set noautoindent
