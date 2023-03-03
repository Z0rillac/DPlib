#> dplib:core/time/real_time/117
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute store result score ms/tick dplib.time run execute in dplib:null run worldborder get
scoreboard players remove ms/tick dplib.time 1
execute in dplib:null run worldborder set 1
execute in dplib:null run worldborder set 100001 100