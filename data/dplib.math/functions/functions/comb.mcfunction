#> dplib.math:functions/comb
# Returns the number of ways to choose `$in2` items from `$in1` items without repetition and without order.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$in1` : number of total items
# - `$in2` : number of items to choose
#
# Output -> score `dplib.math.out` :  
# - `$out` : output value
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $in1 dplib.math.in = @e[tag=game.session] game.session.team_size
# scoreboard players operation $in2 dplib.math.in = @e[tag=game.session] game.session.players
# function dplib.math:functions/comb
# scoreboard players operation @e[tag=game.session] game.session.frequency = $out dplib.math.out
# ```
# ***
# @input score $in1 dplib.math.in
# @input score $in2 dplib.math.in
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/functions/comb/run