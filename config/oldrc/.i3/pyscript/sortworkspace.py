import workspaces
ws=workspaces.workspaces
cmds=['rename workspace "%s" to "%s"\\;'%(ws[i+1],ws[i]) for i in range(9)]
cmd=''.join(cmds*9)
if '__main__'==__name__:
    import os
    os.system('i3-msg %s'%cmd)

