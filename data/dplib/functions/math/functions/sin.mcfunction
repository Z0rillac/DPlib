#> dplib:math/functions/sin
# **Returns an approximation of the sine of `$in` degrees and this approximation scaled by `scale`, avoiding integer overflow for any value. If `$scale` is `0`, the calculation process will be ignored making the function faster. Can be defined like this: `sin($in)*$scale`**
# ```text
# Input:
#     $in = angle in degrees
#     $scale = scale
# Output:
#     $out = output
#     $scaled = $out scaled to $scale
# Scale: $scale
# ```
# @input
#   score $in dplib.in
#       angle in degrees
#   score $scale dplib.in
#       scale
# @output
#   score $out dplib.out
#       output
#   score $scaled dplib.out
#       $out scaled to $scale
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib:private/math/functions/sin/run