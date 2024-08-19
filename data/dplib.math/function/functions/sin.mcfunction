#> dplib.math:functions/sin
# Returns an approximation of the sine of `$in` degrees and this approximation scaled by `scale`, avoiding integer overflow for any value. If `$scale` is `0`, the calculation process will be ignored making the function faster. Can be defined like this: `sin($in)*$scale`
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in` : angle in degrees
# - `$scale` : scale
#
# Output -> score `dplib.math.out` :  
# - `$out` : sine
# - `$scaled` : the scaled cosine
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $in dplib.math.in = foo mypack.bar
# scoreboard players operation $scale dplib.math.in = quux mypack.bar
# function dplib.math:functions/sin
# scoreboard players operation baz mypack.bar = $out dplib.math.out
# scoreboard players operation quuy mypack.bar = $scaled dplib.math.out
# ```
# ***
# @input score $in dplib.math.in
# @input score $scale dplib.math.in
# @output score $out dplib.math.out
# @output score $scaled dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/sin/run