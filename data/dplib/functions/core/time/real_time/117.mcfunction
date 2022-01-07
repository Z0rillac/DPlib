##
 # 117.mcfunction
 # 
 #
 # Created by Zorillac.
##

execute store result score ms/tick dplib.time run execute in dplib:null run worldborder get
scoreboard players remove ms/tick dplib.time 1
execute in dplib:null run worldborder set 1
execute in dplib:null run worldborder set 100001 100