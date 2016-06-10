import os.path
from PIL import Image
root_src='1/'
dst_src='2/'
def fun(p):
    if os.path.islink(root_src+p):
        return
    if os.path.isdir(root_src+p):
        try:
            os.makedirs(dst_src+p)
        except:
            pass
        for n in os.listdir(root_src+p):
            fun(p+'/'+n)
    else:
        if not p.endswith('.png'):
            return
        im=Image.open(root_src+p)
        i=0
        for im in im.split():
            im.save(dst_src+p[:-4]+'.'+str(i)+'.png')
            i+=1
fun('')

