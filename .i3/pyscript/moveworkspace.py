#!/usr/bin/env python
# -*- coding: UTF-8 -*-
"""Greeter.

Usage:
  launcher.py <ws> [--nopaper]
  launcher.py -h | --help

Options:
  -h --help     Show this screen.
""" 
 
from docopt import docopt
arguments = docopt(__doc__)
print(arguments)
import workspaces
w=workspaces.get_current()
cmd='workspace "%s"\\;'%w

import sortworkspace
cmd+=sortworkspace.cmd
if not arguments['--nopaper']:
    import setpaperforworkspace
import os
os.system('i3-msg %s'%cmd) 
