#> dplib.math:functions/clamp
# Returns `$in` clamped to the inclusive range of `$min` and `$max`.
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
#   score $in dplib.math.in
#       input number
#   score $min dplib.math.in
#       minimum value
#   score $max dplib.math.in
#       maximum value
# @output
#   score $out dplib.math.out
#       output
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/clamp/run