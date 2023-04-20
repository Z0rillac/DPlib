#> dplib.math:private/module/functions/comb/1
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #n-k dplib.temp = #n dplib.temp
scoreboard players operation #n-k dplib.temp -= #k dplib.temp
scoreboard players operation #k dplib.temp = #n-k dplib.temp