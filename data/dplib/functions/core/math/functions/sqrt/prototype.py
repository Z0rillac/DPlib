root = 0
n = 1
square = 86
while square > n:
    square-=n
    n+=2 #or n=(root+2)*(root+2)-(root+1)*(root+1)
    root+=1
root+=square/n
print(root)