echo -n "random on" | nc -U   /dev/shm/vlc
echo -n "loop on" | nc -U   /dev/shm/vlc
echo -n "clear" | nc -U   /dev/shm/vlc
vlc "$1"
