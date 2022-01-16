##
 # run.mcfunction
 # 
 #
 # Created by Zorillac.
##
execute at @s anchored eyes run tp @e[tag=dplib.raycasting,limit=1] ^ ^ ^ ~ ~
scoreboard players operation #distance dplib.raycast = $distance dplib.raycast

execute as @e[tag=dplib.raycasting,limit=1] at @s run function dplib:core/raycasting/distance/loop