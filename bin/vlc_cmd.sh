#echo -n "random on" | nc -U   /dev/shm/vlc
#echo -n "loop on" | nc -U   /dev/shm/vlc
#vlc "$1"
echo -n "$1" | nc -U   /dev/shm/vlc
