## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

# THIS IS NOT A CONFIG FILE
# Making changes in this file may have no effect or it may be destructive,
# and any changes after a configuration attempt are guaranteed to work.

scoreboard objectives add dplib.temp dummy
scoreboard objectives add dplib.in dummy
scoreboard objectives add dplib.out dummy
scoreboard objectives add dplib.raycast dummy
function dplib:core/math/const/load

scoreboard objectives add dplib.time dummy
scoreboard players set timestamp_ms dplib.time 0
scoreboard players set tps_scale dplib.time 1000
scoreboard players set #tick dplib.time 0

function dplib:core/sid/load
function dplib:core/thread/load

scoreboard objectives add dplib.benchmark dummy