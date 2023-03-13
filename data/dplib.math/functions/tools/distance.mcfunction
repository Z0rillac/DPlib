#> dplib.math:tools/distance
# Returns the 3D distance between two point.
# ```text
# Input:
#     $x1 = X position of the first point
#     $y1 = Y position of the first point 
#     $z1 = Z position of the first point
#     $x2 = X position of the second point
#     $y2 = Y position of the second point
#     $z2 = Z position of the second point
# Output:
#     $out = the distance
# Scale: 1
# ```
# @input
#   score $x1 dplib.math.in
#       X position of the first point
#   score $y1 dplib.math.in
#       Y position of the first point
#   score $z1 dplib.math.in
#       Z position of the first point
#   score $x2 dplib.math.in
#       X position of the second point
#   score $y2 dplib.math.in
#       Y position of the second point
#   score $z2 dplib.math.in
#       Z position of the second point
# @output
#   score $out dplib.math.out
#       the distance
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/tools/distance/run