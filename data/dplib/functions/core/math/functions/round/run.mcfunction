## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #a dplib.temp = $in dplib.in
scoreboard players operation #b dplib.temp = $in dplib.in
scoreboard players operation #c dplib.temp = $scale dplib.in
scoreboard players operation #c dplib.temp /= 10 dplib.const
scoreboard players operation #a dplib.temp /= $scale dplib.in
scoreboard players operation #b dplib.temp /= #c dplib.temp
scoreboard players operation #b dplib.temp %= 10 dplib.const
execute if score #b dplib.temp matches 5.. run scoreboard players add #a dplib.temp 1
scoreboard players operation #a dplib.temp *= $scale dplib.in
scoreboard players operation $out dplib.out = #a dplib.temp