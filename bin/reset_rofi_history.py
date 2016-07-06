#!/usr/bin/python3
# 重置rofi 历史记录,合并重名项.
# rofi自身不会合并重名项.(好像新版本会加robust rofi cache功能)
# 所以外部程序如果 输出到rofi cache产生重名项的话,就需要这个脚本来合并了
# 由于一些特殊字符的问题,这里需要python3的unicode
import sys
import re
path_rofi_history = sys.argv[1]

s_orig = open(path_rofi_history).read()
l = re.findall('^(\d+)\s(.+)$', s_orig, re.M)

m = {}
for i, n in l:
    i0 = m.get(n, 0)
    i = i0 + int(i)
    m[n] = i
l = [(i, n) for n, i in m.items()]
l.sort()
l.reverse()
l = ['%d %s\n' % i for i in l]

s_out = ''.join(l)
if s_out == s_orig:
    pass
else:
    open(path_rofi_history, 'w').write(s_out)
