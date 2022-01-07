## Header 1

execute in dplib:null as @e[distance=0..] run function dplib:core/time/real_time/kick

function dplib:core/time/real_time/118
scoreboard players operation timestamp_ms dplib.time += ms/tick dplib.time
scoreboard players set tps_tick dplib.time 1000000
scoreboard players operation tps_tick dplib.time /= ms/tick dplib.time


execute if score #tick dplib.time matches ..19 run scoreboard players add #tick dplib.time 1
execute if score #tick dplib.time matches 20 run function dplib:core/time/real_time/tps