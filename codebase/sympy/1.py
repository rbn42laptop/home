import sympy
from sympy import symbols
import os.path
alpha = symbols('alpha')
ow, oh = 1722, 2470
ow1, oh1 = (1 - alpha) * ow, (1 - alpha) * oh
ow2, oh2 = ow - ow1, oh - oh1
nw = sympy.sqrt(ow1**2 + oh2**2)
nh = sympy.sqrt(oh1**2 + ow2**2)
from sympy.solvers import solve
result = solve(nw / 1524 - nh / 1920, alpha)
a, b = result
a, b = a.evalf(), b.evalf()

from sympy.abc import a, b, c, w, h
solve([a + b - 2, a * b - 1], a, b)

_w, _h = 2470, 1722
eq1 = a + b - _h
eq4 = (w + c)**2 - a**2 - _w**2
eq5 = w * 1080 - h * 1920
eq2 = h**2 + c**2 - b**2
eq3 = a * h - c * 2470
result = solve([eq1, eq2, eq3, eq4, eq5], a, b, c, w, h)
for a, b, c, w, h in result:
    a = a.evalf()
    # print(a)
    _tan = a / _w
    import math
    angle = math.atan(_tan)
    angle = angle / math.pi * 180
    print(angle)
