#> dplib.math:functions/sqrt
# Returns the square root of `$in`.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in` : input value  
#
# Output -> score `dplib.math.out` :  
# - `$out` : output value
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $in dplib.math.in = foo mypack.bar
# function dplib.math:functions/sqrt
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

function dplib.math:private/module/functions/sqrt/run