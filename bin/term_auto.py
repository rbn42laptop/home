#!/usr/bin/python
# 目标,通过壁纸颜色判断合适的term,半透明,或者透明,或者实色
# 专门针对compiz的 viewports
import subprocess
import re
import scipy.misc
import os.path
import numpy as np


def execute_and_output(cmd):
    ENCODING = 'utf8'
    s = subprocess.check_output(cmd, shell=True).decode(ENCODING)
    return s
vp = execute_and_output('wmctrl -d')
l = re.findall('\d+', vp)
l = [int(i) for i in l]
w, h, x, y, view_w, view_h = l[1:5] + l[7:9]
x, y = x / view_w, y / view_h
w, h = w / view_w, h / view_h
index = y * w + x
index = int(index + 1)
path = '/dev/shm/w1/'
if not os.path.exists(path):
    path = '/dev/shm/w2/'
path = path + '%04d.png' % index
img = scipy.misc.imread(path)
img = img[:, :, :3]
mean = np.mean(img) / 256.0
if mean > 0.5:
    term = ('~/bin/term_white')
else:
    term = ('~/bin/term_shadow')
print(os.path.expanduser(term))
