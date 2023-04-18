#> dplib.math:private/module/functions/pow/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #e dplib.temp = $in2 dplib.math.in
scoreboard players operation #n dplib.temp = $in1 dplib.math.in
scoreboard players set #r dplib.temp 1
function dplib.math:private/module/functions/pow/loop
scoreboard players operation $out dplib.math.out = #r dplib.temp