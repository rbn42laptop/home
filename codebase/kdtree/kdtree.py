#!/usr/bin/env python
# -*- coding: UTF-8 -*-
from divide import divide

def kdtree(_input,depth=0):
    isleaf=True
    if len(_input)<2:
        return _input,isleaf
    _input2=[[i[0],i[2]] for i,j in _input]
    children=divide(zip(_input2,_input))
    num_children=len(children)
    if num_children<2 and depth>0:
        return _input,isleaf
    isleaf=False
    result=[]
    for child in children:
        meta=child['meta']
        _list=[i[1] for i in child['list']]
        result2,childisleaf=kdtree(_list,depth=depth+1)
        result.append({'meta':meta,'list':result2,'leaf':childisleaf})
    if 0==depth:
        return result
    else:
        return result,isleaf

if '__main__'==__name__   : 
    _input=[[0.1,0.2,0.3,0.4],[0.5,0.7,0.2,0.1],[0.2,0.3,0.1,0.1]] #x,y,w,h

    tolerance=0
    t=tolerance#要实现容忍度，还要保证2xt<w,h而且有可能导致各种wmctrl后计算不精确
    _input=[[x+t,y+t,x+w-t,y+h-t] for x,y,w,h in _input] #x,y,w,h

    _input=(zip(_input,range(len(_input))))
    r=kdtree(_input)    
    #最好把行分割和列分割放在一起处理，这样比较好判断是否分割到了尽头（行列乘积等于1）
