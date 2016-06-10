#!/usr/bin/python
import os.path
temp_file = '/dev/shm/ibus_cn'
if os.path.exists(temp_file):
    os.remove(temp_file)
    os.system('ibus engine xkb:us::eng')
else:
    os.system('touch %s' % temp_file)
    os.system('ibus engine rime')
