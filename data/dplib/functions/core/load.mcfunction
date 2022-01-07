# - Datapack Library -
# By: Zorillac
# MIT License
#
# Version: 1
# namespace: dplib

# THIS IS NOT A CONFIG FILE
# Making changes in this file may have no effect or it may be destructive,
# but no changes after a configuration attempt are guaranteed to work.

scoreboard objectives add dplib.temp dummy
scoreboard objectives add dplib.in dummy
scoreboard objectives add dplib.out dummy
function dplib:core/math/const/load

scoreboard objectives add dplib.time dummy
scoreboard players set timestamp_ms dplib.time 0
scoreboard players set tps_scale dplib.time 1000
scoreboard players set #tick dplib.time 0