#!/usr/bin/env python
# -*- coding: UTF-8 -*-
#第一步，给予几个一维区间，找出其中的空隙

#import numpy as np
#rng = np.random.RandomState(1)
#l=rng.rand(20).reshape((10,2))
#for i in l:
#    i.sort()
#逐一遍历这些区间，然后记录判断空隙的变动，最初的空隙是0,1，或者其他数字，实际用的时候，可以用max normalize下    

#显然我们随便搞的算法不能保证性能，不过这大概不重要。
#其实我们应该直接合并区间，合并结束之后，剩下的就是空隙了

def divide(_input):
    #最好_input是可排序的，你要做成这样，这样插入的时候效率会比较高
    _input.sort()
    l=[i for i,j in _input]

    l+=[[1.0,1.1],[1.3,1.4]]
    result=[]
    _min,_max=-0.1,0.0
    for i0,i1 in l:
        #不接受面积为0
        assert not i0==i1
        if i0>=_max:
            if _max>_min:
                result.append([_min,_max])
            _min,_max=i0,i1
        elif i1>_max:
            _max=i1
    #找出空隙
    l=result
    result=[[i0[1],i1[0]] for i0,i1 in zip(l[:-1],l[1:])]
    #这个算法把左右空隙都算出来了，但是前面有过非0面积检查，所以可以放心丢弃左右空隙
    #下一步，就可以放心的用这些缝隙分割节点了
    #3个缝隙，要分割4个节点，还有同时附上边缘的剩余空间
    nodes=[i0+i1 for i0,i1 in zip(result[:-1],result[1:])]
    ######################
    #这里缺乏附带信息，所以不便于进一步的划分节点
    children=[]
    n=nodes.pop(0)        
    l=[]
    for child in _input:
        if not child[0][0]<n[-1]:
            children.append({'meta':n,'list':l})
            n=nodes.pop(0)        
            l=[]
        l.append(child)
    children.append({'meta':n,
        'list':l})

    return children
    #############分割算法到此为止

if __name__=='__main__':
    _input=[[0.3,0.4],[0.2,0.5],[0.6,0.8],[0.8,0.9],[0.8,1.0]]
    _input=list(zip(_input,range(len(_input))))
    divide(_input)
