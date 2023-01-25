## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation $out dplib.out = $in dplib.in
execute if score $in dplib.in < $min dplib.in run scoreboard players operation $out dplib.out = $min dplib.in
execute if score $in dplib.in > $max dplib.in run scoreboard players operation $out dplib.out = $max dplib.in