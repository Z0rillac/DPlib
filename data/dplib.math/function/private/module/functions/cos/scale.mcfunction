#> dplib.math:private/module/functions/cos/scale
# @within dplib.math:private/module/functions/cos/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #scaled_0 dplib.temp = $scale dplib.math.in
scoreboard players operation #scaled_0 dplib.temp /= 1000 dplib.const

scoreboard players operation #scaled_1 dplib.temp = $scale dplib.math.in
scoreboard players operation #scaled_1_0 dplib.temp = #scaled_0 dplib.temp
scoreboard players operation #scaled_1_0 dplib.temp *= 1000 dplib.const
scoreboard players operation #scaled_1 dplib.temp -= #scaled_1_0 dplib.temp

scoreboard players operation #scaled_0 dplib.temp *= $out dplib.math.out
scoreboard players operation #scaled_1 dplib.temp *= $out dplib.math.out
scoreboard players operation #scaled_1 dplib.temp /= 1000 dplib.const

scoreboard players operation $scaled dplib.math.out = #scaled_0 dplib.temp
scoreboard players operation $scaled dplib.math.out += #scaled_1 dplib.temp