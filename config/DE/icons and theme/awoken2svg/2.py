root_src='2/'
dst_src='3/'
f_bash=open('2.sh','w')
import os.path
def fun(p):
    if os.path.isdir(root_src+p):
        if not os.path.exists(dst_src+p):
            os.makedirs(dst_src+p)
        for n in os.listdir(root_src+p):
            fun(p+'/'+n)
    else:
        s='convert -negate %s %s.ppm\n'%(root_src+p,dst_src+p[:-4])
        f_bash.write(s)
        
fun('')
f_bash.close()

