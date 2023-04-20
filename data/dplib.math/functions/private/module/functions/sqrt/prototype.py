## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

def sqrt(number):
    guess = round(number)
    guess = round(guess / 2)
    for i in range(0,19): 
        l = round(number)
        l = round(l / guess)
        l = round(l + guess)
        l = round(l / 2)
        guess = round(l)
    return guess

