## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #a dplib.temp = $in dplib.in
scoreboard players operation #a dplib.temp /= $scale dplib.in
scoreboard players operation #a dplib.temp *= $scale dplib.in
scoreboard players operation $out dplib.out = #a dplib.temp