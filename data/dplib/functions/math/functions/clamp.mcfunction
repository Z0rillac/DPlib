#> dplib:math/functions/clamp
# **Returns `$in` clamped to the inclusive range of `$min` and `$max`.**
# ```text
# Input:
#     $in = input number
#     $min = minimum value
#     $max = maximum value
# Output:
#     $out = output
# Scale: 1
# ```
# @input
#   score $in dplib.in
#       input number
#   score $min dplib.in
#       minimum value
#   score $max dplib.in
#       maximum value
# @output
#   score $out dplib.out
#       output
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib:private/math/functions/clamp/run