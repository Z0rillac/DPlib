#> dplib.math:functions/clamp
# Returns `$in` clamped to the inclusive range of `$min` and `$max`.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in` : input value  
# - `$min` : minimum value  
# - `$max` : maximum value  
#
# Output -> score `dplib.math.out` :  
# - `$out` : output value
# ***
# Example code :  
# ```mcfunction
# scoreboard players set $min dplib.math.in 0
# scoreboard players set $max dplib.math.in 64
# scoreboard players operation $in dplib.math.in = foo mypack.bar
# function dplib.math:functions/clamp
# scoreboard players operation baz mypack.bar = $out dplib.math.out
# ```
# ***
# @input score $in dplib.math.in
# @input score $min dplib.math.in
# @input score $max dplib.math.in
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/clamp/run