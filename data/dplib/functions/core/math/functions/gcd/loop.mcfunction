## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #c dplib.temp = #a dplib.temp
scoreboard players operation #a dplib.temp = #b dplib.temp
scoreboard players operation #b dplib.temp = #c dplib.temp
scoreboard players operation #b dplib.temp %= #a dplib.temp
execute unless score #b dplib.temp matches 0 run function dplib:core/math/functions/gcd/loop