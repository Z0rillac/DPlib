# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: dplib

scoreboard players operation #e dplib.temp = $exponent dplib.in
scoreboard players operation #n dplib.temp = $number dplib.in
scoreboard players set #r dplib.temp 1
function dplib:core/math/functions/pow/loop
scoreboard players operation $out dplib.out = #r dplib.temp