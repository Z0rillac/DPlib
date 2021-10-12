# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib

scoreboard players operation #e DPlib.temp = $exponent DPlib.in
scoreboard players operation #n DPlib.temp = $number DPlib.in
scoreboard players set #r DPlib.temp 1
function dplib:core/math/functions/pow/loop
scoreboard players operation $out DPlib.out = #r DPlib.temp