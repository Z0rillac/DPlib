# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: dplib

scoreboard players operation #a dplib.temp = $in dplib.in
scoreboard players operation #a dplib.temp /= $scale dplib.in
scoreboard players operation #a dplib.temp *= $scale dplib.in
scoreboard players operation $out dplib.out = #a dplib.temp