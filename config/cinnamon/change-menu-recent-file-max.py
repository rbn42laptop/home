p='/usr/share/cinnamon/applets/menu@cinnamon.org/applet.js'
l=open(p).readlines()
s= 'const MAX_RECENT_FILES'
for i in range(len(l)):
    if s in l[i]:
        l[i]=s+'=200\n'
        pass
    pass
s=''.join(l)
open(p,'w').write(s)

