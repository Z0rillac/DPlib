#> dplib.math:tools/random_range_lcg
# Returns a random number between `$min` and `$max` using the Linear Congruential Generator Algorithm.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$min` : minimum  
# - `$max` : maximum (not including)  
#
# Output -> score `dplib.math.out` :  
# - `$out` : output    
# ***
# Example code :  
# ```mcfunction
# scoreboard players set $min dplib.math.in 0
# scoreboard players set $max dplib.math.in 64
# function dplib.math:tools/random_range_lcg
# scoreboard players operation baz mypack.bar = $out dplib.math.out
# ```
# ***
# @input score $min dplib.math.in
# @input score $max dplib.math.in
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/tools/random_range_lcg/run