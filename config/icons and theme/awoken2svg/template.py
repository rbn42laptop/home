import sys

from pyquery import PyQuery as pq
s=open(sys.argv[1]).read()
d=pq(s)
g=d(d.children()[1])
g.attr('fill','#fff')
g.attr('style','fill:#ffffff;filter:url(#filter3202)')
s=g.outerHtml()
t=open('template.svg').read()
s=t%s
f=open(sys.argv[2],'w')
f.write(s)
f.close()
