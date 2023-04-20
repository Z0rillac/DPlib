#> dplib.math:private/module/functions/comb/0
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #n dplib.temp = $in1 dplib.math.in
scoreboard players operation #k dplib.temp = $in2 dplib.math.in

scoreboard players operation #n/2 dplib.temp = #n dplib.temp
scoreboard players operation #n/2 dplib.temp /= 2 dplib.const

execute if score #k dplib.temp > #n/2 dplib.temp run function dplib.math:private/module/functions/comb/1

scoreboard players set #res dplib.temp 1
scoreboard players set #i dplib.temp 0

execute if score #i dplib.temp < #k dplib.temp run function dplib.math:private/module/functions/comb/2

scoreboard players operation $out dplib.math.out = #res dplib.temp