##
 # loop.mcfunction
 # 
 #
 # Created by Zorillac.
##
scoreboard players remove #distance dplib.raycast 1
execute if score #distance dplib.raycast matches ..0 run tp @s ~ ~ ~
execute if score #distance dplib.raycast matches 0.. positioned ^ ^ ^1 run function dplib:core/raycasting/distance/loop