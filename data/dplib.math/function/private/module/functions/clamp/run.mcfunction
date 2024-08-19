#> dplib.math:private/module/functions/clamp/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation $out dplib.math.out = $in dplib.math.in
scoreboard players operation $out dplib.math.out > $min dplib.math.in
scoreboard players operation $out dplib.math.out < $max dplib.math.in