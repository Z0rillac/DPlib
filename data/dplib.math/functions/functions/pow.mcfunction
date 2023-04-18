#> dplib.math:functions/pow
# Returns `$in1` raised to the power `$in2`.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in1` : input value  
# - `$in2` : exponent  
#
# Output -> score `dplib.math.out` :  
# - `$out` : output value
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $in1 dplib.math.in = quux mypack.bar
# scoreboard players operation $in2 dplib.math.in = foo mypack.bar
# function dplib.math:functions/pow
# scoreboard players operation baz mypack.bar = $out dplib.math.out
# ```
# ***
# @input score $in1 dplib.math.in
# @input score $in2 dplib.math.in
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/pow/run