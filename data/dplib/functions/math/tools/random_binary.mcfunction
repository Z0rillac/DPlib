#> dplib:math/tools/random_binary
# **Returns `1` or `0` randomly.**
# Can be replaced by :
# ```mcfunction
# execute if predicate dplib:random_binary run ...
# ```
# ```text
# Output:
#     $out = output (boolean)
# Scale: 1
# ```
# @output
#   score $out dplib.out
#       output (boolean)
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib:private/math/tools/random_binary/run