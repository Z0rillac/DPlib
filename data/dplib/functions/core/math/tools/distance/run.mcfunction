## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players set #d dplib.temp 0

scoreboard players operation #c dplib.temp = $x2 dplib.in
scoreboard players operation #c dplib.temp -= $x1 dplib.in
scoreboard players operation #c dplib.temp *= #c dplib.temp
scoreboard players operation #d dplib.temp += #c dplib.temp

scoreboard players operation #c dplib.temp = $y2 dplib.in
scoreboard players operation #c dplib.temp -= $y1 dplib.in
scoreboard players operation #c dplib.temp *= #c dplib.temp
scoreboard players operation #d dplib.temp += #c dplib.temp

scoreboard players operation #c dplib.temp = $z2 dplib.in
scoreboard players operation #c dplib.temp -= $z1 dplib.in
scoreboard players operation #c dplib.temp *= #c dplib.temp
scoreboard players operation #d dplib.temp += #c dplib.temp

scoreboard players operation $in dplib.in = #d dplib.temp
function dplib:core/math/functions/sqrt/run
