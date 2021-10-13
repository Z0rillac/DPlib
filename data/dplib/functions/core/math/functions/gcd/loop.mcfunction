# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib

scoreboard players operation #c DPlib.temp = #a DPlib.temp
scoreboard players operation #a DPlib.temp = #b DPlib.temp
scoreboard players operation #b DPlib.temp = #c DPlib.temp
scoreboard players operation #b DPlib.temp %= #a DPlib.temp
execute unless score #b DPlib.temp matches 0 run function dplib:core/math/functions/gcd/loop