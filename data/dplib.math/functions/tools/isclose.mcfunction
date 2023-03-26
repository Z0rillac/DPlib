#> dplib.math:tools/isclose
# Returns `1` if the values `$in1` and `$in2` are close to each other and `0` otherwise.
# Whether or not two values are considered close is determined according to given tolerance `$max`.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in1` : input value 1  
# - `$in2` : input value 2  
# - `$max` : tolerance  
#
# Output -> score `dplib.math.out` :  
# - `$out` : output (boolean)  
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $in1 dplib.math.in = quux mypack.bar
# scoreboard players operation $in2 dplib.math.in = foo mypack.bar
# scoreboard players set $max dplib.math.in 5
# function dplib.math:tools/isclose
# scoreboard players operation baz mypack.bar = $out dplib.math.out
# ```
# ***
# @input score $in1 dplib.math.in
# @input score $in2 dplib.math.in
# @input score $max dplib.math.in
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/tools/isclose/run