# run in  /usr/share/icons/AwOkenWhite
# better only run  in /usr/share/icons/AwOkenWhite/clear/64x64/apps  /usr/share/icons/AwOkenWhite/clear/128x128/apps  etc
import shutil
import os.path 
def fun2(p):
	for n in os.listdir(p):
		if os.path.isdir(p+n):
			fun2(p+n+'/')
		else:
			fun1(p+n)
def fun1(n):
	if n.endswith('2.png'):
		n1=n[:-5]+'.png' 
		n2=n[:-5]+'1.png' 
		if os.path.islink(n2):
			os.remove(n2) 
		if os.path.islink(n1):
			os.remove(n1) 
		try:
			shutil.copy(n  ,n1) 
		except:
			pass
		try:
			shutil.copy(n  ,n2) 
		except:
			pass
fun2('./')
