#> dplib.math:functions/tan
# Returns the tangent of `$in` degrees.
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
# function dplib.math:functions/tan
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

function dplib.math:private/module/functions/tan/run