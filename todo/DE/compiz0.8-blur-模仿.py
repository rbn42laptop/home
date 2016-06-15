r = 50
s = .02
r, s = 30, .05
r, s = 50, .05
r, s = 80, .03
r, s = 150, .015
r, s = 190, .012
r, s = 300, .008
r, s = 500, .005
r, s = 800, .003
f = 0.5 + (s / 2.0)
l1 = [0] * r * 3
l2 = [0] * r * 3
l1[0], l1[1] = 1.0, 1.0
for i in range(3, 2 * r + 1):
    l2[0] = 1
    for j in range(1, i - 1):
        l2[j] = (l1[j - 1] + l1[j]) * f
    l2[i - 1] = 1
    l1, l2 = l2, l1
print(l1)
print(l2)
sum_ = 0.0
for i in range(r * 2 + 1):
    sum_ += l1[i]
print(sum_)
for i in range(r * 2 + 1):
    l1[i] /= sum_
print('l1')
print(l1)
# 应该是奇偶判断
pos = [0] * r
amp = [0] * r
i, j = 0, 0
if r & 1:
    pos[i] = r
    amp[i] = l1[i]
    i, j = 1, 1
import math
mySize = math.ceil(r / 2.0)
for i in range(mySize):
    pos[i] = r - j
    pos[i] -= l1[j + 1] / (l1[j] + l1[j + 1])
    amp[i] = l1[j] + l1[j + 1]
    j += 2
pos[mySize] = 0
amp[mySize] = l1[r]
print('pos')
print(pos)
print(amp)
print('center')
print(l1[r])
print('middle')
print(l1[mySize], l1[mySize] / l1[r])
print('edge')
print(l1[0], l1[0] / l1[r])
