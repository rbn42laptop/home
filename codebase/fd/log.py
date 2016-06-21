#/usr/bin/python
# 10 * * * * export USER=;python ~/codebase/fd/log.py
import time
import os.path
path_root = os.path.expanduser('~/log/')
if not os.path.exists(path_root):
    os.mkdir(path_root)
_time = time.strftime('%Y%M%d_%X_%Z')
path = os.path.join(path_root, '%s' % _time)
os.system('lsof -u $USER > %s.lsof' % path)
f = open('%s.lsof' % path)
l = [n.split()[-1] for n in f]
l = list(set(l))
f = open(os.path.join(path_root, '0_overall.log'), 'a')
f.write('%s %s\n' % (path, len(l)))
f.close()
