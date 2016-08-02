import os.path
import glob
p = '~/.icons/AwOkenWhite/clear/128x128/*/*.png'
p = os.path.expanduser(p)
l = glob.glob(p)
print('mkdir aw')
for p in l:
    if os.path.islink(p) or os.path.isdir(p):
        continue
    print('cp %s ~/.icons/docky/aw' % p)
