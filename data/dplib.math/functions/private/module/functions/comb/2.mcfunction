#> dplib.math:private/module/functions/comb/2
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #n-i dplib.temp = #n dplib.temp
scoreboard players operation #n-i dplib.temp -= #i dplib.temp
scoreboard players operation #i+1 dplib.temp = #i dplib.temp
scoreboard players add #i+1 dplib.temp 1
scoreboard players operation #res dplib.temp *= #n-i dplib.temp
scoreboard players operation #res dplib.temp /= #i+1 dplib.temp
scoreboard players add #i dplib.temp 1

execute if score #i dplib.temp < #k dplib.temp run function dplib.math:private/module/functions/comb/2