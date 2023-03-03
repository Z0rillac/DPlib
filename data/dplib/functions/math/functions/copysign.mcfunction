#> dplib:math/functions/copysign
# **Returns the magnitude (absolute value) of `$number` but the sign of `$source`.**
# ```text
# Input:
#     $number = initial number
#     $source = sign source
# Output:
#     $out = output
# Scale: 1
# ```
# @input
#   score $number dplib.in
#       initial number
#   score $source dplib.in
#       sign source
#
# @output
#   score $out dplib.out
#       output
# @public
# @context any

function dplib:core/math/functions/copysign/run