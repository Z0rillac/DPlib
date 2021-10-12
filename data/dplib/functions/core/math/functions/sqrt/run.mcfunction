# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib

scoreboard players set #r DPlib.temp 0
scoreboard players set #n DPlib.temp 1
scoreboard players operation #s DPlib.temp = $in DPlib.in
function dplib:core/math/functions/sqrt/loop
scoreboard players operation #s DPlib.temp /= #n DPlib.temp
scoreboard players operation #r DPlib.temp += #s DPlib.temp
scoreboard players operation $out DPlib.out = #r DPlib.temp
