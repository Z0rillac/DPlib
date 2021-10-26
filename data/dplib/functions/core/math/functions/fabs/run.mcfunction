# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: dplib

scoreboard players operation $out dplib.out = $in dplib.in
execute if score $in dplib.in matches ..-1 run scoreboard players operation $out dplib.out *= -1 dplib.const