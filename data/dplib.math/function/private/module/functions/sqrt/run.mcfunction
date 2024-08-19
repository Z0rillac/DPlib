#> dplib.math:private/module/functions/sqrt/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #guess dplib.temp = $in dplib.math.in
scoreboard players operation #guess dplib.temp /= 2 dplib.const

function dplib.math:private/module/functions/sqrt/loop

scoreboard players operation $out dplib.math.out = #guess dplib.temp