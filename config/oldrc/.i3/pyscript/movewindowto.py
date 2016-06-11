import workspaces
w=workspaces.get_current()
cmd='move container to workspace "%s"\\;'%w
#cmd+='workspace "%s"\\;'%w

import sortworkspace
cmd+=sortworkspace.cmd

#import setpaperforworkspace
import os
os.system('i3-msg %s'%cmd) 
