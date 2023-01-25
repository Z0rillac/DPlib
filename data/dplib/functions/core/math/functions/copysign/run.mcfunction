## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation $out dplib.out = $number dplib.in
execute if score $number dplib.in matches ..-1 run scoreboard players operation $out dplib.out *= -1 dplib.const
execute if score $source dplib.in matches ..-1 run scoreboard players operation $out dplib.out *= -1 dplib.const