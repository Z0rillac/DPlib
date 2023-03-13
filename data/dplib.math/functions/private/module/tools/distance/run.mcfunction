#> dplib.math:private/module/tools/distance/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players set #d dplib.temp 0

scoreboard players operation #c dplib.temp = $x2 dplib.math.in
scoreboard players operation #c dplib.temp -= $x1 dplib.math.in
scoreboard players operation #c dplib.temp *= #c dplib.temp
scoreboard players operation #d dplib.temp += #c dplib.temp

scoreboard players operation #c dplib.temp = $y2 dplib.math.in
scoreboard players operation #c dplib.temp -= $y1 dplib.math.in
scoreboard players operation #c dplib.temp *= #c dplib.temp
scoreboard players operation #d dplib.temp += #c dplib.temp

scoreboard players operation #c dplib.temp = $z2 dplib.math.in
scoreboard players operation #c dplib.temp -= $z1 dplib.math.in
scoreboard players operation #c dplib.temp *= #c dplib.temp
scoreboard players operation #d dplib.temp += #c dplib.temp

scoreboard players operation $in dplib.math.in = #d dplib.temp
function dplib.math:private/module/functions/sqrt/run
