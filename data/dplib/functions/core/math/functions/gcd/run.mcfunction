## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #a dplib.temp = $in1 dplib.in
scoreboard players operation #b dplib.temp = $in2 dplib.in
function dplib:core/math/functions/gcd/loop
execute if score #a dplib.temp matches ..-1 run scoreboard players operation #a dplib.temp *= -1 dplib.const
scoreboard players operation $out dplib.out = #a dplib.temp