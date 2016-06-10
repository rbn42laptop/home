
l=['apps.indicators.multiload' ,
        'org.compiz',
        'org.gnome.settings-daemon.plugins.media-keys',
        'org.gnome.gedit',
        'org.gnome.nautilus',
        'org.gnome.desktop',
        ]
for n in l:
    #print('dconf dump /%s/ > dump/%s'%(n.replace('.','/'),n))
    print('dconf load /%s/ < ./%s'%(n.replace('.','/'),n))
