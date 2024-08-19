#> dplib.math:tools/random_binary_lcg
# Returns `1` or `0` randomly using the Linear Congruential Generator Algorithm.
# ***  
# Output -> score `dplib.math.out` :  
# - `$out` : output (boolean)  
# ***
# Example code :  
# ```mcfunction
# function dplib.math:tools/random_binary_lcg
# execute if score $out dplib.math.out = #true dplib.enum run function mypack:foo
# ```
# ***
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/tools/random_binary_lcg/run