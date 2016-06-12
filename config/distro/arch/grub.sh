sudo pacman -S os-prober
sudoedit /etc/default/grub
"""
GRUB_TIMEOUT=0
"""
sudo grub-mkconfig -o /boot/grub/grub.cfg
