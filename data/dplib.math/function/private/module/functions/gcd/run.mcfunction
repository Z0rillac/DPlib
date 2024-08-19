#> dplib.math:private/module/functions/gcd/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #a dplib.temp = $in1 dplib.math.in
scoreboard players operation #b dplib.temp = $in2 dplib.math.in
function dplib.math:private/module/functions/gcd/loop
execute if score #a dplib.temp matches ..-1 run scoreboard players operation #a dplib.temp *= -1 dplib.const
scoreboard players operation $out dplib.math.out = #a dplib.temp