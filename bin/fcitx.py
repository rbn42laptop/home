#!/usr/bin/python
import os.path
import time
temp_file = '/dev/shm/fcitx_cn'
if os.path.exists(temp_file):
    os.remove(temp_file)
    os.system('fcitx-remote -s fcitx-keyboard-us')
else:
    os.system('touch %s' % temp_file)
    os.system('fcitx-remote -s rime')

time.sleep(0.1)
os.system('~/bin/keys.sh')
time.sleep(0.5)
os.system('~/bin/keys.sh')
time.sleep(1.0)
os.system('~/bin/keys.sh')
time.sleep(2.0)
os.system('~/bin/keys.sh')
time.sleep(5)
os.system('~/bin/keys.sh')
