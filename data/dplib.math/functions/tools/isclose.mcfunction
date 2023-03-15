#> dplib.math:tools/isclose
# Returns `1` if the values `$in1` and `$in2` are close to each other and 0 otherwise.
# Whether or not two values are considered close is determined according to given tolerance.
# ```text
# Input:
#     $in1 = number 1
#     $in2 = number 2
#     $max = tolerence
# Output:
#     $out = output (boolean)
# ```
# @input
#   score $in1 dplib.math.in
#       number 1
#   score $in2 dplib.math.in
#       number 2
#   score $max dplib.math.in
#       tolerance
# @output
#   score $out dplib.math.out
#       output (boolean)
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/tools/isclose/run