#> dplib.math:private/module/functions/cbrt/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #guess dplib.temp = $in dplib.math.in
scoreboard players operation #guess dplib.temp /= 3 dplib.const

function dplib.math:private/module/functions/cbrt/loop

scoreboard players operation $out dplib.math.out = #guess dplib.temp