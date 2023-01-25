## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players set #r dplib.temp 0
scoreboard players set #n dplib.temp 1
scoreboard players set #m dplib.temp 6
scoreboard players operation #s dplib.temp = $in dplib.in
function dplib:core/math/functions/cbrt/loop
scoreboard players operation #s dplib.temp /= #n dplib.temp
scoreboard players operation #r dplib.temp += #s dplib.temp
scoreboard players operation $out dplib.out = #r dplib.temp
