import getpass


def add(rofi, cmds, args):
    username = getpass.getuser()
    for s in args:
        if not s.startswith('-'):
            s = s.replace('/%s/' % username, '/$USER/')
            s = '"%s"' % s
        cmds.append(s)
    cmd = ' '.join(cmds)
    f = open(rofi, 'a')
    f.write(cmd + '\n')
    f.close()

if __name__ == '__main__':
    import sys
    rofi = sys.argv[1]
    cmds = list(sys.argv[2:4])
    args = sys.argv[4:]
    add(rofi, cmds, args)
