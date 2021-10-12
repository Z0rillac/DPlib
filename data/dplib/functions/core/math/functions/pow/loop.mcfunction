# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib

scoreboard players operation #r DPlib.temp *= #n DPlib.temp
scoreboard players remove #e DPlib.temp 1
execute if score #e DPlib.temp matches 1.. run function dplib:core/math/functions/pow/loop