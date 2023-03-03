#> dplib:private/time/real_time/tps
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #ms/20t dplib.time = timestamp_ms dplib.time
scoreboard players operation #ms/20t dplib.time -= #ts dplib.time
scoreboard players operation #ts dplib.time = timestamp_ms dplib.time
scoreboard players set tps dplib.time 20000000
scoreboard players operation tps dplib.time /= #ms/20t dplib.time
scoreboard players set #tick dplib.time 0