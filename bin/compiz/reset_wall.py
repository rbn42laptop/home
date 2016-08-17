#!/usr/bin/python
import time
import os.path
import sys

try:
    delay = int(sys.argv[1])
except:
    delay = 40
time.sleep(delay)

path = '~/.config/compiz/compizconfig/Default.ini'
path = os.path.expanduser(path)
state1 = 'as_active_plugins = core;ccp;move;resize;place;decoration;commands;regex;png;switcher;animation;wallpaper;dbus;staticswitcher;expo;blur;\n'
state2 = 'as_active_plugins = core;ccp;move;resize;place;decoration;commands;regex;png;switcher;animation;wallpaper;dbus;wall;staticswitcher;expo;blur;\n'

lines = [s for s in open(path)]


def fun(state):
    state = [state if 'as_active_plugins' in s else s for s in lines]
    state = ''.join(state)
    return state
state1 = fun(state1)
state2 = fun(state2)

with open(path, 'w') as f:
    f.write(state1)
time.sleep(5)
with open(path, 'w') as f:
    f.write(state2)
