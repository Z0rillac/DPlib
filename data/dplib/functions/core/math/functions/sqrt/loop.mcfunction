# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: dplib

scoreboard players operation #s dplib.temp -= #n dplib.temp
scoreboard players add #n dplib.temp 2
scoreboard players add #r dplib.temp 1
execute if score #s dplib.temp > #n dplib.temp run function dplib:core/math/functions/sqrt/loop