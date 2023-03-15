#> dplib.math:functions/gcd
# Returns the greatest common divisor of `$in1` and `$in2`.
# ```text
# Input:
#     $in1 = number 1
#     $in2 = number 2
# Output:
#     $out = output
# Scale: 1
# ```
# @input
#   score $in1 dplib.math.in
#       number 1
#   score $in2 dplib.math.in
#       number 2
# @output
#   score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/gcd/run