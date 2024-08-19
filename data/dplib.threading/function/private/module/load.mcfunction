#> dplib.threading:private/module/load
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard objectives add dplib.threading.in dummy
scoreboard objectives add dplib.threading.main dummy
scoreboard objectives add dplib.threading.parent dummy
scoreboard objectives add dplib.threading.child dummy
scoreboard objectives add dplib.threading.function dummy

scoreboard players set #threading.here dplib.enum 0
scoreboard players set #threading.herexy dplib.enum 1
scoreboard players set #threading.xyz dplib.enum 2
scoreboard players set #threading.xyzxy dplib.enum 3
scoreboard players set #threading.herexy64 dplib.enum 4
scoreboard players set #threading.xyz64 dplib.enum 5
scoreboard players set #threading.xyzxy64 dplib.enum 6

scoreboard players operation $this dplib.threading.in = #true dplib.enum
scoreboard players operation $childs dplib.threading.in = #true dplib.enum

execute unless score global dplib.threading.main matches 2.. run scoreboard players add global dplib.threading.main 2

function dplib.threading:ids