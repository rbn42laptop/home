workspaces=['%d'%i for i in range(1,11)]
workspaces[0]='1_free'
def get_current():
    import sys
    w=int(sys.argv[1])
    if w==0:
        w=10
    return workspaces[w-1]
