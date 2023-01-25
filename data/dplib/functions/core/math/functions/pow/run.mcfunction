## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #e dplib.temp = $exponent dplib.in
scoreboard players operation #n dplib.temp = $number dplib.in
scoreboard players set #r dplib.temp 1
function dplib:core/math/functions/pow/loop
scoreboard players operation $out dplib.out = #r dplib.temp