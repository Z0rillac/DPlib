# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib

function dplib:core/math/tools/random/run
scoreboard players operation #mod DPlib.temp = $max DPlib.in
scoreboard players operation #mod DPlib.temp -= $min DPlib.in
scoreboard players operation $out DPlib.out %= #mod DPlib.temp
scoreboard players operation $out DPlib.out += $min DPlib.in