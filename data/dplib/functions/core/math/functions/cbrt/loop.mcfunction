## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #s dplib.temp -= #n dplib.temp
scoreboard players operation #n dplib.temp += #m dplib.temp
scoreboard players add #m dplib.temp 6
scoreboard players add #r dplib.temp 1
execute if score #s dplib.temp > #n dplib.temp run function dplib:core/math/functions/cbrt/loop