#> dplib.math:tools/random
# Returns a random number between `-2147483648` and `2147483647`.
# ***  
# Output -> score `dplib.math.out` :  
# - `$out` : output  
# ***
# Example code :  
# ```mcfunction
# function dplib.math:tools/random
# scoreboard players operation baz mypack.bar = $out dplib.math.out
# ```
# ***
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/tools/random/run