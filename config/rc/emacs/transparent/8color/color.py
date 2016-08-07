#!/usr/bin/python
"""
从截图sample中抽取原本的8color主题
python color.py > theme.el
"""
import scipy.misc
# 截图样例
img = scipy.misc.imread('./sample3.png')
# 对应的列表
lst = [s.strip() for s in open('./list')]
# 单字高10
# 起始1348,52
colorlst = []
# 抽前景色,背景色暂且不管了.
for i in range(len(lst)):
    x, y = 1492, 33 + i * 10
    color = img[y, x]
    colorlst.append(str([i for i in color]))
colorset = set(colorlst)
# 加上orgmode的颜色
lst2 = [s.strip() for s in open('./list_org')]
img = scipy.misc.imread('./sample_org.png')
for i in range(len(lst2)):
    x, y = 504, 14 + i * 10
    color = img[y, x]
    colorlst.append(str([i for i in color]))
lst += lst2

dic = {
    str([0, 0, 0]): 'Black',
    str([1, 2, 3]): 'Black',  # 有些部分用了这个背景色
    str([255, 43, 43]): 'Red',
    str([28, 172, 120]): 'Green',
    str([248, 213, 104]): 'Yellow',
    str([56, 141, 255]): 'Blue',
    str([255, 29, 206]): 'Magenta',
    str([24, 167, 181]): 'Cyan',
    str([179, 179, 179]): 'White',
    str([106, 106, 106]): 'BrightBlack',
    str([253, 94, 83]): 'BrightRed',
    str([168, 228, 160]): 'BrightGreen',
    str([254, 254, 34]): 'BrightYellow',
    str([154, 206, 235]): 'BrightBlue',
    str([252, 116, 253]): 'BrightMagenta',
    str([236, 234, 190]): 'BrightCyan',
    str([255, 255, 255]): 'BrightWhite',
}
for c, n in zip(colorlst, lst):
    c = dic[c]
    print('(set-face-foreground \'%s "%s")' % (n, c))
