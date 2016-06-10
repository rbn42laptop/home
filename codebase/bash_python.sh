export S="""
for i in range(10):
    a=i+1
    if a>5:
        print(a)
        print(a+1)
    if a>3:
        print(333)
"""
python -c "$S"
