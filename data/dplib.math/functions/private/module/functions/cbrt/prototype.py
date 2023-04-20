## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

def cbrt(number):
    guess = round(number)
    guess = round(guess / 3)
    for i in range(0,37): 
        guess_pow_2 = round(guess)
        guess_pow_2 = round(guess_pow_2 * guess)
        guess_x_2 = round(guess)
        guess_x_2 = round(guess_x_2 * 2)
        longtruc = round(number)
        longtruc = round(longtruc / guess_pow_2)
        longtruc = round(longtruc + guess_x_2)
        longtruc = round(longtruc / 3)
        guess = round(longtruc)
    return guess