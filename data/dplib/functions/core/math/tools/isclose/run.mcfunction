# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: dplib


scoreboard players operation #a dplib.temp = $in1 dplib.in
scoreboard players operation #a dplib.temp -= $in2 dplib.in
execute if score #a dplib.temp matches ..-1 run scoreboard players operation #a dplib.temp *= -1 dplib.const
scoreboard players set $out dplib.out 0
execute if score #a dplib.temp <= $max dplib.in run scoreboard players set $out dplib.out 1