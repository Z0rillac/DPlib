from math import asin, degrees

scale = 10000000

for i in range(361):
    n=1/360*i
    n2=1/360*(i+1)
    var = degrees(asin(n))
    print('execute if score #a dplib.temp matches {a}..{b} run scoreboard players set $out dplib.out {out}'.format(a=round(n*scale),b=round(n2*scale)-1,out=round(var*scale)))