#> dplib.math:private/module/functions/lcm/loop
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #a dplib.temp >< #b dplib.temp
scoreboard players operation #b dplib.temp %= #a dplib.temp
execute unless score #b dplib.temp matches 0 run function dplib.math:private/module/functions/lcm/loop