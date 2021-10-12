from math import cos, radians

for i in range(0,360):
    print('execute if score #a DPlib.temp matches {0} run scoreboard players set $out DPlib.out {1}'.format(i, int(cos(radians(i))*1000000000)))