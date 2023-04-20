#> dplib.math:private/module/functions/cbrt/loop
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #previous dplib.temp = #guess dplib.temp

scoreboard players operation #guess_pow_2 dplib.temp = #guess dplib.temp 
scoreboard players operation #guess_pow_2 dplib.temp *= #guess dplib.temp
scoreboard players operation #guess_x_2 dplib.temp = #guess dplib.temp
scoreboard players operation #guess_x_2 dplib.temp *= 2 dplib.const
scoreboard players operation #l dplib.temp = $in dplib.math.in
scoreboard players operation #l dplib.temp /= #guess_pow_2 dplib.temp
scoreboard players operation #l dplib.temp += #guess_x_2 dplib.temp
scoreboard players operation #l dplib.temp /= 3 dplib.const
scoreboard players operation #guess dplib.temp = #l dplib.temp

execute if score #previous dplib.temp > #guess dplib.temp run function dplib.math:private/module/functions/cbrt/loop