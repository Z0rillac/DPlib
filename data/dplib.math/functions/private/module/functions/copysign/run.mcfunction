#> dplib.math:private/module/functions/copysign/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation $out dplib.math.out = $in1 dplib.math.in
execute if score $in1 dplib.math.in matches ..-1 run scoreboard players operation $out dplib.math.out *= -1 dplib.const
execute if score $in2 dplib.math.in matches ..-1 run scoreboard players operation $out dplib.math.out *= -1 dplib.const