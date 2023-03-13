#> dplib.math:tools/random_range
# Returns a random number between `$min` and `$max`.
# ```text
# Input:
#     $min = minimum
#     $max = maximum (not including)
# Output:
#     $out = output
# Scale: 1
# ```
# @input
#   score $min dplib.math.in
#       minimum
#   score $max dplib.math.in
#       maximum (not including)
# @output
#   score $out dplib.math.out
#       output
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/tools/random_range/run