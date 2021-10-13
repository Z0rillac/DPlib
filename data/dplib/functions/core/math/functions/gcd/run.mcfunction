# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib

scoreboard players operation #a DPlib.temp = $in1 DPlib.in
scoreboard players operation #b DPlib.temp = $in2 DPlib.in
function dplib:core/math/functions/gcd/loop
execute if score #a DPlib.temp matches ..-1 run scoreboard players operation #a DPlib.temp *= -1 DPlib.const
scoreboard players operation $out DPlib.out = #a DPlib.temp