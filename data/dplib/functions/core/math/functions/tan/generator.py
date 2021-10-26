from math import tan, radians

for i in range(0,360):
    if i != 90 and i != 270:
        print('execute if score #a dplib.temp matches {0} run scoreboard players set $out dplib.out {1}'.format(i, int(tan((radians(i)))*10000000)))