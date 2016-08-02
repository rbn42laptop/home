import os.path
import glob
p = '~/.icons/MacBuntu-OS/*/128/*.png'
p = os.path.expanduser(p)
print('mkdir m2')
l = glob.glob(p)
for p in l:
    if os.path.islink(p) or os.path.isdir(p):
        continue
    print('cp %s ~/.icons/docky/m2' % p)
