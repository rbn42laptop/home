#find -iname "firefox" > 1.txt
#find -iname "thunderbird" > 1.txt
#remvoe icons

import os
l=open('1.txt').readlines()
for n in l:
	try:
		os.remove(n.strip())
	except:
		print('error')
