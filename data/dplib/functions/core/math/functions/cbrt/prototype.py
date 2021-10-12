root = 0
n = 1
m = 6
square = 492111
while square > n:
    square-=n
    n+=m #or n=(root+2)*(root+2)*(root+2)-(root+1)*(root+1)*(root+1)
    m+=6 #
    print('n={0}'.format(n))
    root+=1
root+=square/n
print(root)