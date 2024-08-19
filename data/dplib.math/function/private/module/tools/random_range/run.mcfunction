#> dplib.math:private/module/tools/random_range/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/tools/random/run
scoreboard players operation #mod dplib.temp = $max dplib.math.in
scoreboard players operation #mod dplib.temp -= $min dplib.math.in
scoreboard players operation $out dplib.math.out %= #mod dplib.temp
scoreboard players operation $out dplib.math.out += $min dplib.math.in