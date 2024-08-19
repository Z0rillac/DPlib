#> dplib.math:functions/copysign
# Returns the magnitude (absolute value) of `$in1` but the sign of `$in2`.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in1` : input number
# - `$in2` : sign source
#
# Output -> score `dplib.math.out` :  
# - `$out` : output value
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $in1 dplib.math.in = quux mypack.bar
# scoreboard players operation $in2 dplib.math.in = foo mypack.bar
# function dplib.math:functions/copysign
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

function dplib.math:private/module/functions/copysign/run