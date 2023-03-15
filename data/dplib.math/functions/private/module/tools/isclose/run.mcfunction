#> dplib.math:private/module/tools/isclose/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #a dplib.temp = $in1 dplib.math.in
scoreboard players operation #a dplib.temp -= $in2 dplib.math.in
execute if score #a dplib.temp matches ..-1 run scoreboard players operation #a dplib.temp *= -1 dplib.const
scoreboard players set $out dplib.math.out 0
execute if score #a dplib.temp <= $max dplib.math.in run scoreboard players set $out dplib.math.out 1