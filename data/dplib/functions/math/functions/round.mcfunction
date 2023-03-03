#> dplib:math/functions/round
# **Returns `$in` rounded scaled to `$scale`.**
# ```text
# Input:
#     $in = input number
#     $scale = the scale
# Output:
#     $out = output
# Scale: $scale
# ```
# @input
#   score $in dplib.in 
#       input number
#   score $scale dplib.in
#       scale
# @output
#   score $out dplib.in
#       output
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib:private/math/functions/round/run