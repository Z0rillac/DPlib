##
 # 118.mcfunction
 # 
 #
 # Created by Zorillac.
##

scoreboard players set ms/tick dplib.time 59999967
execute store result score #ms dplib.time run worldborder get
scoreboard players operation ms/tick dplib.time -= #ms dplib.time
worldborder set 59999967
worldborder set 59899967 100