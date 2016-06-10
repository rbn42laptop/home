import os.path
def fun():
	os.system('chmod 755 *')
	for n in os.listdir('.'):
		if os.path.isdir(n):
			os.chdir(n)
			fun()
			os.chdir('..')
		
fun()
