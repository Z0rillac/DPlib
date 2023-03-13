#> dplib.math:functions/cos
# Returns an approximation of the cosine of `$in` degrees and this approximation scaled by `scale`, avoiding integer overflow for any value. If `$scale` is `0`, the calculation process will be ignored making the function faster. Can be defined like this: `cos($in)*$scale`
# ```text
# Input:
#     $in = angle in degrees
#     $scale = scale
# Output:
#     $out = output
#     $scaled = $out scaled to $scale
# Scale: $scale
# ```
# @input
#   score $in dplib.math.in
#       angle in degrees
#   score $scale dplib.math.in
#       scale
# @output
#   score $out dplib.math.out
#       output
#   score $scaled dplib.math.out
#       $out scaled to $scale
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/cos/run