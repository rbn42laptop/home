
import re
s=open('./gtk-3.0/gtk-widgets.css.bck').read()
s=s.replace('\n','/**/')
l=re.findall('-gtk-gradient.+?;',s)
l2=[]
l3=[]
p1=re.compile('\*/.+?to\s*\((.+?)\)\s*,[^,]*/\*')
for n in l:
    n2=re.findall(p1,n)
    if len(n2)>0:
        l2.append(n2[0]+';')
        l3.append(n)
for n1,n2 in zip(l3,l2):
    s=s.replace(n1,n2)

s=s.replace('/**/','\n')
print(s)
