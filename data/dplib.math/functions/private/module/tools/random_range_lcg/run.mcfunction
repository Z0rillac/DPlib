#> dplib.math:private/module/tools/random_range_lcg/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module/tools/random_lcg/run

# Avoid patterns
scoreboard players operation $out dplib.math.out /= 10 dplib.const
scoreboard players operation $out dplib.math.out *= lcg.multiplier dplib.math.main

scoreboard players operation #mod dplib.temp = $max dplib.math.in
scoreboard players operation #mod dplib.temp -= $min dplib.math.in
scoreboard players operation $out dplib.math.out %= #mod dplib.temp
scoreboard players operation $out dplib.math.out += $min dplib.math.in