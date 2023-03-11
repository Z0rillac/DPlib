#> dplib:private/math/functions/sin/scale
# @within dplib:private/math/functions/sin/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #scaled_0 dplib.temp = $scale dplib.in
scoreboard players operation #scaled_0 dplib.temp /= 1000 dplib.const

scoreboard players operation #scaled_1 dplib.temp = $scale dplib.in
scoreboard players operation #scaled_1_0 dplib.temp = #scaled_0 dplib.temp
scoreboard players operation #scaled_1_0 dplib.temp *= 1000 dplib.const
scoreboard players operation #scaled_1 dplib.temp -= #scaled_1_0 dplib.temp

scoreboard players operation #scaled_0 dplib.temp *= $out dplib.out
scoreboard players operation #scaled_1 dplib.temp *= $out dplib.out
scoreboard players operation #scaled_1 dplib.temp /= 1000 dplib.const

scoreboard players operation $scaled dplib.out = #scaled_0 dplib.temp
scoreboard players operation $scaled dplib.out += #scaled_1 dplib.temp