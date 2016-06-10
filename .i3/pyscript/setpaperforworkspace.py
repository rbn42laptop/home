import workspaces
ws=workspaces.workspaces
w=workspaces.get_current()
_cmd='feh --recursive --bg-fill --randomize --no-fehbg ~/.wallpaper/%s/*'%w
import os
os.system(_cmd)

