#> dplib.math:functions/copysign
# Returns the magnitude (absolute value) of `$number` but the sign of `$source`.
# ```text
# Input:
#     $number = input number
#     $source = sign source
# Output:
#     $out = output
# Scale: 1
# ```
# @input
#   score $number dplib.math.in
#       input number
#   score $source dplib.math.in
#       sign source
# @output
#   score $out dplib.math.out
#       output
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/copysign/run