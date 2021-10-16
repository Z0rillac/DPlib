# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib


scoreboard players operation #a DPlib.temp = $in1 DPlib.in
scoreboard players operation #a DPlib.temp -= $in2 DPlib.in
execute if score #a DPlib.temp matches ..-1 run scoreboard players operation #a DPlib.temp *= -1 DPlib.const
scoreboard players set $out DPlib.out 0
execute if score #a DPlib.temp <= $max DPlib.in run scoreboard players set $out DPlib.out 1