# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib

scoreboard players operation #a DPlib.temp = $in DPlib.in
scoreboard players operation #a DPlib.temp /= $scale DPlib.in
scoreboard players operation #a DPlib.temp *= $scale DPlib.in
scoreboard players operation $out DPlib.out = #a DPlib.temp