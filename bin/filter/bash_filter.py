#!/usr/bin/python
"""
经常性误用bash运行python.过滤下不要运行py后缀文件.
"""
import sys
import os
commands = sys.argv[1:]
python = False
if len(commands) > 0 and commands[0].strip().endswith('.py'):
    python = True
commands = ['bash'] + ['"%s"' % s for s in commands]
commands = ' '.join(commands)

if python:
    print(commands)
else:
    os.system(commands)
