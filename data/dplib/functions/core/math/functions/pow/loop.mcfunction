# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: dplib

scoreboard players operation #r dplib.temp *= #n dplib.temp
scoreboard players remove #e dplib.temp 1
execute if score #e dplib.temp matches 1.. run function dplib:core/math/functions/pow/loop