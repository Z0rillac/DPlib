#> dplib:math/functions/pow
# **Returns `$number` raised to the power `$exponent`.**
# ```text
# Input:
#     $exponent = exponent
#     $number = input number
# Output:
#     $out = output
# Scale: 1
# ```
# @input
#   score $exponant dplib.in
#       exponant
#   score $number dplib.in
#       input number
# @output
#   score $out dplib.out
#       output
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib:private/math/functions/pow/run