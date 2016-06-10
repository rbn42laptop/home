import os
os.makedirs('temp')
for n in os.listdir('.'):
    if n.endswith('.0.svg'):
        os.rename(n,'temp/'+n[:-6]+'.svg')
