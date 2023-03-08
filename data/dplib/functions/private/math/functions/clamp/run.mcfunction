#> dplib:private/math/functions/clamp/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation $out dplib.out = $in dplib.in
scoreboard players operation $out dplib.out > $min dplib.in
scoreboard players operation $out dplib.out < $max dplib.in