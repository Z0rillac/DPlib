## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

def cbrt(number):
    if number < 166376:
        guess = 0
        n = 1
        m = 6
        while number > n:
            number -= n
            n += m
            m += 6
            guess+=1
        guess += number / n

    if number > 166375:
        guess = number/3
        for i in range(0,37): guess = (2*guess+number/guess**2)/3
        return guess

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

# this is 19 time faster than the previous code