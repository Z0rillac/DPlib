#> dplib.math:functions/lcm
# Returns the least common multiple of `$in1` and `$in2`.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in1` : value 1
# - `$in2` : value 2
#
# Output -> score `dplib.math.out` :  
# - `$out` : output value
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $in1 dplib.math.in = quux mypack.bar
# scoreboard players operation $in2 dplib.math.in = foo mypack.bar
# function dplib.math:functions/lcm
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

function dplib.math:private/module/functions/lcm/run