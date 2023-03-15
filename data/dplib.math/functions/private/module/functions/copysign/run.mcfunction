#> dplib.math:private/module/functions/copysign/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation $out dplib.math.out = $number dplib.math.in
execute if score $number dplib.math.in matches ..-1 run scoreboard players operation $out dplib.math.out *= -1 dplib.const
execute if score $source dplib.math.in matches ..-1 run scoreboard players operation $out dplib.math.out *= -1 dplib.const