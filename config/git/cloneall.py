import urllib.request
import json
print('mkdir ~/git')
print('cd ~/git')
u = 'https://api.github.com/users/rbn42/repos'
s = urllib.request.urlopen(u).read().decode('utf8')
repos = json.loads(s)
for repo in repos:
    clone = repo['clone_url']
    print('git clone %s' % clone)
