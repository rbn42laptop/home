#!/usr/bin/python
"""
经常性误用bash运行python.过滤下不要运行py后缀文件.
仅仅只过滤arg[0]参数
"""
import sys
import subprocess
commands = sys.argv[1:]
python = False
if len(commands) > 0 and commands[0].strip().endswith('.py'):
    python = True

if python:
    print('bash ' + ' '.join(commands))
else:
    subprocess.call(['bash'] + commands)
