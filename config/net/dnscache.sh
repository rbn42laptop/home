sudo pacman -S dnsmasq
#没什么特殊配置,主要是打开127.0.0.1监听地址,作为dns运作,并且需要dns指向127.0.0.1工作.但是8.8.8.8也要保留,作为upstream.
#https://wiki.archlinux.org/index.php/dnsmasq
#test
#journalctl -u dnsmasq
#start
#sudo systemctl restart dnsmasq
       
