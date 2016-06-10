#gzip tar
rm /dev/shm/d.tgz
tgz /dev/shm/d.tgz /media/$USER/dmzj/down.manhua/*.py  /media/$USER/dmzj/down.manhua/*.sh /media/$USER/dmzj/down.manhua/*.lst
#encrypt
~/bin/encrypt.sh /dev/shm/d.tgz ~/codebase/dmzj.tgz.encrypt

