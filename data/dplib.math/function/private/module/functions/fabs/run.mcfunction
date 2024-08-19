#> dplib.math:private/module/functions/fabs/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation $out dplib.math.out = $in dplib.math.in
execute if score $in dplib.math.in matches ..-1 run scoreboard players operation $out dplib.math.out *= -1 dplib.const