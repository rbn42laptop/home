import os.path
import glob
p = '~/.icons/MBuntu-OS-Y/*/128/*.png'
p = os.path.expanduser(p)
l = glob.glob(p)
for p in l:
    if os.path.islink(p) or os.path.isdir(p):
        continue
    print('cp %s ~/.icons/docky/mac' % p)
