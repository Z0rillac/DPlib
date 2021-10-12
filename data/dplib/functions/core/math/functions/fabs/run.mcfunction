# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib

scoreboard players operation $out DPlib.out = $in DPlib.in
execute if score $in DPlib.in matches ..-1 run scoreboard players operation $out DPlib.out *= -1 DPlib.const