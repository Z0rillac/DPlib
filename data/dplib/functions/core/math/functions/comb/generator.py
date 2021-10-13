from math import comb

for j in range(1, 33):
    for i in range(1, 33):
        if comb(j, i) > 0:
            print('execute if score $in1 DPlib.in matches {0} if score $in2 DPlib.in matches {1} run scoreboard players set $out DPlib.out {2}'.format(j, i, comb(j, i)))