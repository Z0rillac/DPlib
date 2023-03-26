#> dplib.math:functions/copysign
# Returns the magnitude (absolute value) of `$number` but the sign of `$source`.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$number` : input number
# - `$source` : sign source
#
# Output -> score `dplib.math.out` :  
# - `$out` : output value
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $number dplib.math.in = quux mypack.bar
# scoreboard players operation $source dplib.math.in = foo mypack.bar
# function dplib.math:functions/copysign
# scoreboard players operation baz mypack.bar = $out dplib.math.out
# ```
# ***
# @input score $number dplib.math.in
# @input score $source dplib.math.in
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/copysign/run