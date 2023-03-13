#> dplib.math:functions/comb
# Returns the number of ways to choose `$in2` items from `$in1` items without repetition and without order.
# ```text
# Input:
#     $in1 = number of total items
#     $in2 = number of items to choose
# Output:
#     $out = output
# Scale: 1
# ```
# @input
#   score $in1 dplib.math.in
#       number of total items
#   score $in2 dplib.math.in
#       number of items to chose
# @output
#   score $out dplib.math.out
#       output
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/comb/run