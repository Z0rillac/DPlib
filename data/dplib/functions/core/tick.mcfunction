# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: DPlib

#Nearest cow exemple:
#execute as Zorillac store result score $x1 DPlib.in run data get entity @s Pos[0]
#execute as Zorillac store result score $y1 DPlib.in run data get entity @s Pos[1]
#execute as Zorillac store result score $z1 DPlib.in run data get entity @s Pos[2]
#execute at Zorillac as @e[sort=nearest,type=cow,limit=1] store result score $x2 DPlib.in run data get entity @s Pos[0]
#execute at Zorillac as @e[sort=nearest,type=cow,limit=1] store result score $y2 DPlib.in run data get entity @s Pos[1]
#execute at Zorillac as @e[sort=nearest,type=cow,limit=1] store result score $z2 DPlib.in run data get entity @s Pos[2]
#function dplib:core/math/tools/distance/run
#title Zorillac actionbar [{"text":"Nearest Cow : ","color":"red"},{"score":{"name":"$out","objective":"DPlib.out"},"color":"yellow"},{"text":"m","color":"yellow"}]