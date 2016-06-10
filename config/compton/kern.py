
import numpy as np,math
def fun(s):return lambda x,y:math.exp(-(x**2.0+y**2.0)/2.0/s**2.0)/2.0/math.pi/s/s
sigma,radius=3.5,7
sigma,radius=10,20
#sigma,radius=7,14
#sigma,radius=7,7
ll=[[fun(sigma)(x,y) for x in range(-radius,radius+1) ] for y in range(-radius,radius+1)]
ll=np.asarray(ll)/np.max(ll)
#remove center
s='blur-kern="%d,%d,%s"'%(radius*2+1,radius*2+1,','.join(['%f'%(i) for i in ll.reshape((radius*2+1)**2)]).replace('1.000000,',''))
print(s)
#(sigma*4+1)**2+1==len(s.split(','))
