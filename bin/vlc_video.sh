#preferences/interface/main interfaces: remote control interface
#preferences/interface/main interfaces/rc: "fake tty"  "unix socket command input=/dev/shm/.vlc.sock"
echo -n "random off" | nc -U   /dev/shm/vlc
echo -n "clear" | nc -U   /dev/shm/vlc
vlc --qt-minimal-view "$1"
#echo $1
