#> dplib.math:functions/sin
# Returns the exact value of the sine of `$in` degrees, scaled to `10000000`.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in` : angle in degrees
#
# Output -> score `dplib.math.out` :  
# - `$out` : sine
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $in dplib.math.in = foo mypack.bar
# function dplib.math:functions/sin
# scoreboard players operation baz mypack.bar = $out dplib.math.out
# ```
# ***
# @input score $in dplib.math.in
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/sin_bsa/run