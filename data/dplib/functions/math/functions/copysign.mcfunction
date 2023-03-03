#> dplib:math/functions/copysign
# **Returns the magnitude (absolute value) of `$number` but the sign of `$source`.**
# ```text
# Input:
#     $number = input number
#     $source = sign source
# Output:
#     $out = output
# Scale: 1
# ```
# @input
#   score $number dplib.in
#       input number
#   score $source dplib.in
#       sign source
# @output
#   score $out dplib.out
#       output
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib:private/math/functions/copysign/run