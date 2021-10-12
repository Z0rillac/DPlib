# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib

scoreboard players set #d DPlib.temp 0

scoreboard players operation #c DPlib.temp = $x2 DPlib.in
scoreboard players operation #c DPlib.temp -= $x1 DPlib.in
scoreboard players operation #c DPlib.temp *= #c DPlib.temp
scoreboard players operation #d DPlib.temp += #c DPlib.temp

scoreboard players operation #c DPlib.temp = $y2 DPlib.in
scoreboard players operation #c DPlib.temp -= $y1 DPlib.in
scoreboard players operation #c DPlib.temp *= #c DPlib.temp
scoreboard players operation #d DPlib.temp += #c DPlib.temp

scoreboard players operation #c DPlib.temp = $z2 DPlib.in
scoreboard players operation #c DPlib.temp -= $z1 DPlib.in
scoreboard players operation #c DPlib.temp *= #c DPlib.temp
scoreboard players operation #d DPlib.temp += #c DPlib.temp

scoreboard players operation $in DPlib.in = #d DPlib.temp
function dplib:core/math/functions/sqrt/run
