#> dplib.math:functions/cos_bsa
# Returns the exact value of the cosine of `$in` degrees, scaled to `10000000` using a binary search algorithm. This method is much more accurate for Minecraft but also takes a little more time. It is recommended to use it more in case you do a big calculation using a single cosine.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in` : angle in degrees
#
# Output -> score `dplib.math.out` :  
# - `$out` : cosine
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $in dplib.math.in = foo mypack.bar
# function dplib.math:functions/cos_bsa
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

function dplib.math:private/module/functions/cos_bsa/run