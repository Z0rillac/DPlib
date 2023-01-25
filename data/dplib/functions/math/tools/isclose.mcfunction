## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

# Returns 1 if the values $in1 and $in2 are close to each other and 0 otherwise.
# Whether or not two values are considered close is determined according to given tolerance.
#
# Input:
#   $in1 = number 1
#   $in2 = number 2
#   $max = tolerence
#
# Output:
#   $out = output (boolean)

function dplib:core/math/tools/isclose/run