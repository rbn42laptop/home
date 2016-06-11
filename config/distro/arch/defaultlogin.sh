sudo systemctl edit getty@tty1

"""
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin username --noclear %I $TERM
"""
