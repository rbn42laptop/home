#!/usr/bin/python
"""
因为太熟悉用vim编辑文件了,所以没法记得在打开org文件的时候,换成emacs
不过要巧妙的传递参数似乎是件挺麻烦的事
或许存在可以直传参数的第三方库.
"""
import sys
import os
commands = sys.argv[1:]
emacs = False
if len(commands) > 0 and commands[0].strip().endswith('.org'):
    emacs = True
commands = ['vim'] + ['"%s"' % s for s in commands]
commands = ' '.join(commands)

if python:
    print(commands)
else:
    os.system(commands)
