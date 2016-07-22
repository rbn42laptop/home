#!/usr/bin/python
import sys
n = sys.argv[1]
s = open(n, 'rb').read()
for e in 'utf8', 'gbk', 'shift-jis', 'big5':
    try:
        s = s.decode(e)
        break
    except:
        pass
else:
    a = 1 / 0
print(e)
with open(n, 'w', encoding='utf8') as f:
    f.write(s)
