#> dplib:private/math/tools/random_range/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib:private/math/tools/random/run
scoreboard players operation #mod dplib.temp = $max dplib.in
scoreboard players operation #mod dplib.temp -= $min dplib.in
scoreboard players operation $out dplib.out %= #mod dplib.temp
scoreboard players operation $out dplib.out += $min dplib.in