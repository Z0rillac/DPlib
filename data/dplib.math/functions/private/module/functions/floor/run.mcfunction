#> dplib.math:private/module/functions/floor/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #a dplib.temp = $in dplib.math.in
scoreboard players operation #a dplib.temp /= $scale dplib.math.in
scoreboard players operation #a dplib.temp *= $scale dplib.math.in
scoreboard players operation $out dplib.math.out = #a dplib.temp