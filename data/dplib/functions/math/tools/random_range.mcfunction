#> dplib:math/tools/random_range
# **Returns a random number between `$min` and `$max`.**
# ```text
# Input:
#     $min = minimum
#     $max = maximum (not including)
# Output:
#     $out = output
# Scale: 1
# ```
# @input
#   score $min dplib.in
#       minimum
#   score $max dplib.in
#       maximum (not including)
# @output
#   score $out dplib.out
#       output
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib:private/math/tools/random_range/run