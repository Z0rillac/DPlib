#> dplib:private/math/functions/lcm/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #a dplib.temp = $in1 dplib.in
scoreboard players operation #b dplib.temp = $in2 dplib.in
function dplib:private/math/functions/lcm/loop
execute if score #a dplib.temp matches ..-1 run scoreboard players operation #a dplib.temp *= -1 dplib.const
scoreboard players operation $out dplib.out = $in1 dplib.in
scoreboard players operation $out dplib.out /= #a dplib.temp
scoreboard players operation $out dplib.out *= $in2 dplib.in