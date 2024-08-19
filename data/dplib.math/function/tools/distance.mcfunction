#> dplib.math:tools/distance
# Returns the 3D distance between two point.
# ***  
# Parameters -> score `dplib.math.in` :  
# - `$x1` : X position of the first point  
# - `$y1` : Y position of the first point  
# - `$z1` : Z position of the first point  
# - `$x2` : X position of the second point  
# - `$y2` : Y position of the second point  
# - `$z2` : Z position of the second point  
#
# Output -> score `dplib.math.out` :  
# - `$out` : the distance
# ***
# Example code :  
# ```mcfunction
# # Puts the player's coordinates in parameters of the function
# execute as Someone store result score $x1 dplib.math.in run data get entity @s Pos[0]
# execute as Someone store result score $y1 dplib.math.in run data get entity @s Pos[1]
# execute as Someone store result score $z1 dplib.math.in run data get entity @s Pos[2]
# # Puts the nearest cow coordinates in parameters of the function
# execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $x2 dplib.math.in run data get entity @s Pos[0]
# execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $y2 dplib.math.in run data get entity @s Pos[1]
# execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $z2 dplib.math.in run data get entity @s Pos[2]
# # Calculates the distance
# function dplib.math:tools/distance
# ```
# ***
# @input score $x1 dplib.math.in
# @input score $y1 dplib.math.in
# @input score $z1 dplib.math.in
# @input score $x2 dplib.math.in
# @input score $y2 dplib.math.in
# @input score $z2 dplib.math.in
# @output score $out dplib.math.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/tools/distance/run