tmp='/dev/shm/i3-toggle-border'
import os.path
if os.path.exists(tmp):
    os.remove(tmp)
    cmd='i3-msg border none'
else:
    open(tmp,'w').close()
    #import sys
    #width=int(sys.argv[1])
    width=20
    cmd='i3-msg border normal %d'%width
os.system(cmd)
