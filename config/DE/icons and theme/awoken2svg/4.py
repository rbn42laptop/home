root_src='4/'
dst_src='5/'
f_bash=open('4.sh','w')
import os.path
def fun(p):
    if os.path.isdir(root_src+p):
        if not os.path.exists(dst_src+p):
            os.makedirs(dst_src+p)
        for n in os.listdir(root_src+p):
            fun(p+'/'+n)
    else:
        s='python3 template.py %s   %s.svg\n'%(root_src+p,dst_src+p[:-4])
        f_bash.write(s)
        
fun('')
f_bash.close()

