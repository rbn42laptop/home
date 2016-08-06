#!/usr/bin/python
"""
从十六进制颜色转换到schema格式.毕竟其他程序的配置都是十六进制的.

读取的文件要求把颜色拍好序列后读入,
"""
import sys
import re
src = sys.argv[1]
s = open(src).read()
l = re.findall('#(......)', s)
count = 2
for color in l:
    r, g, b = color[:2], color[2:4], color[4:]
    r, g, b = int(r, 16), int(g, 16), int(b, 16)
    print('color %2d %3d %3d %3d  0 0' % (count, r, g, b))
    count += 1
    if count == 10:
        count = 12
