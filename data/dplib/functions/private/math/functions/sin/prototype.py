import math

x = 49
scale = 981221
p = x
p %= 360
x %= 180

term_0 = 180
term_0 -= x
term_0 *= x

term_1 = 4000
term_1 *= term_0
if p > 180: term_1 *= -1

term_2 = 40500
term_2 -= term_0

sin = term_1
sin /= term_2

scaled = 0
if not scale == 0:
    scaled_0 = scale
    scaled_0 = math.floor(scaled_0 / 1000)

    scaled_1 = scale
    scaled_1_0 = scaled_0
    scaled_1_0 *= 1000
    scaled_1 -= scaled_1_0 

    scaled_0 *= sin
    scaled_1 *= sin
    scaled_1 /= 1000

    scaled = scaled_0
    scaled += scaled_1


print(math.sin(math.radians(x)), sin)
print(math.sin(math.radians(x))*scale, scaled)