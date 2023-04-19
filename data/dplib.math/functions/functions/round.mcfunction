#> dplib.math:functions/round
# Returns `$in` scaled to `$scale` rounded to an integer value
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in` : input value  
# - `$scale` : the scale  
#
# Output -> score `dplib.math.out` :  
# - `$out` : output value
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $in dplib.math.in = foo mypack.bar
# scoreboard players set $scale dplib.math.in 100
# function dplib.math:functions/round
# scoreboard players operation baz mypack.bar = $out dplib.math.out
# ```
# ***
# @input score $in dplib.math.in
# @input score $scale dplib.math.in
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/round/run