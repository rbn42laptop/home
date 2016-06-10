import os.path
p_root='/usr/share/applications/'
d={
        'firefox':False,
        'thunderbird':False,
        'Aptana':'aptana',
        }
for n in d: 
    for fn in os.listdir(p_root):
        if n in fn:
            l=open(p_root+fn).readlines()
            for i in range(len(l)):
                if 'Icon' in l[i]:
                    l[i]='Icon='+(d[n] if d[n] else n)+'\n'
                    pass
                pass
            f=open(p_root+fn,'w')
            for s in l:
                f.write(s)
                pass
            f.close()
            pass
        pass
    pass


