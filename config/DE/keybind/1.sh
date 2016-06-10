dconf write /org/gnome/settings-daemon/plugins/media-keys/terminal "'<Super>Return'"
dconf write /org/gnome/desktop/wm/keybindings/close "['<Shift><Super>q']"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/']"

dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/   > 1.dconf
dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/  <  1.dconf

