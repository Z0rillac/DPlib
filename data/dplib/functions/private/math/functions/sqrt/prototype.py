## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

def sqrt(number):
    if number < 362:
        root = 0
        n = 1
        square = 897494
        while square > n:
            square -= n
            n += 2
            root+=1
        root += square / n
        print(root)

    if number > 361:
        guess = number/2
        for i in range(0,19): guess = (guess+number/guess)/2
        return guess

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

# only 1250 times faster than the previous code lol

