# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: dplib

function dplib:core/math/tools/random/run
scoreboard players operation #mod dplib.temp = $max dplib.in
scoreboard players operation #mod dplib.temp -= $min dplib.in
scoreboard players operation $out dplib.out %= #mod dplib.temp
scoreboard players operation $out dplib.out += $min dplib.in