import sys
f = sys.stdin
l = [n.split()[-1] for n in f]
l = list(set(l))
print(len(l))
