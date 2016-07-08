export EDITOR=vim
sudo systemctl edit getty@tty1

"""
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin username --noclear %I $TERM
"""

#有必要开两个tty,因为第一个tty作为gui,可能崩溃,需要第二个tty从命令行恢复.
sudo systemctl edit getty@tty2
