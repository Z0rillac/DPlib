# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib

scoreboard players operation #s DPlib.temp -= #n DPlib.temp
scoreboard players add #n DPlib.temp 2
scoreboard players add #r DPlib.temp 1
execute if score #s DPlib.temp > #n DPlib.temp run function dplib:core/math/functions/sqrt/loop