#!/usr/bin/python
"""
从截图sample中抽取原本的8color主题
python color.py > theme.el
"""
import scipy.misc


dic = {
    str([0, 0, 0]): 'Black',
    str([1, 2, 3]): 'Black',  # 有些部分用了这个背景色
    str([255, 43, 43]): 'Red',
    str([28, 172, 120]): 'Green',
    str([248, 213, 104]): 'Yellow',
    str([56, 141, 255]): 'BrightBlue',
    str([255, 29, 206]): 'Magenta',
    str([24, 167, 181]): 'BrightCyan',
    str([179, 179, 179]): 'BrightWhite',
    str([106, 106, 106]): 'BrightBlack',
    str([253, 94, 83]): 'BrightRed',
    str([168, 228, 160]): 'BrightGreen',
    str([254, 254, 34]): 'BrightYellow',
    str([154, 206, 235]): 'Blue',
    str([252, 116, 253]): 'BrightMagenta',
    str([236, 234, 190]): 'Cyan',
    str([255, 255, 255]): 'White',
}


def output(img, lst, cpoint, bpoint, background, anti=False):
    img = scipy.misc.imread(img)
    # 对应的列表
    lst = [s.strip() for s in open(lst)]
    # 单字高10
    # 起始1348,52
    colorlst = []
    boldlst = []
    # 抽前景色,背景色暂且不管了.
    for i in range(len(lst)):
        x, y = cpoint
        x, y = x, y + i * 10
        color = img[y, x]
        colorlst.append(str([i for i in color]))
        x, y = bpoint
        x, y = x, y + i * 10
        color = img[y, x]
        boldlst.append(str([i for i in color]))
    for c, n, b in zip(colorlst, lst, boldlst):
        c = dic[c]
        # print('(set-face-foreground \'%s "%s")' % (n, c))
        bold = b in background
        if anti:
            bold = not bold
        bold = ' :weight bold' if bold else ''
        if n in ('default',):
            continue
        print(' \'(%s ((t (:foreground "%s" %s ))))' % (n, c, bold))

print('(custom-set-faces')
# 加上orgmode的颜色
background = {
    str([24, 2, 126]),
}
output('./sample_org.png', './list_org',
       (504, 14), (251, 16), background, anti=True)
background = {
    str([40, 2, 126]),
}
output('./sample3.png', './list', (1492, 33), (1223, 36), background)
print(')')
