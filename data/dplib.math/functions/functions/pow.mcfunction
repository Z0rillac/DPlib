#> dplib.math:functions/pow
# Returns `$number` raised to the power `$exponent`.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$exponent` : exponent
# - `$number` : input value
#
# Output -> score `dplib.math.out` :  
# - `$out` : output value
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $exponent dplib.math.in = quux mypack.bar
# scoreboard players operation $number dplib.math.in = foo mypack.bar
# function dplib.math:functions/pow
# scoreboard players operation baz mypack.bar = $out dplib.math.out
# ```
# ***
# @input score $exponent dplib.math.in
# @input score $number dplib.math.in
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/pow/run