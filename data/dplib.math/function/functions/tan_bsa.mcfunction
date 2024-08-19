#> dplib.math:functions/tan_bsa
# Returns the tangent of `$in` degrees scaled to `10000000` using a binary search algorithm.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in` : angle in degrees
#
# Output -> score `dplib.math.out` :  
# - `$out` : tangent
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $in dplib.math.in = foo mypack.bar
# function dplib.math:functions/tan_bsa
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

function dplib.math:private/module/functions/tan_bsa/run