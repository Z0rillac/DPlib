#> dplib.math:tools/random_lcg
# Returns a random number between `-2147483648` and `-2147483647` using the Linear Congruential Generator Algorithm.
# ***  
# Output -> score `dplib.math.out` :  
# - `$out` : output    
# ***
# Example code :  
# ```mcfunction
# function dplib.math:tools/random_lcg
# scoreboard players operation baz mypack.bar = $out dplib.math.out
# ```
# ***
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/tools/random_lcg/run