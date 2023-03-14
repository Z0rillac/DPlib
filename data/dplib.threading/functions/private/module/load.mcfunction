#> dplib.threading:private/module/load
# @within dplib:private/load
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard objectives add dplib.threading.main dummy
scoreboard objectives add dplib.threading.thread dummy

scoreboard objectives remove dplib.player.sid
scoreboard objectives add dplib.threading.sid dummy
scoreboard objectives add dplib.threading.sid.limbs dummy
scoreboard objectives add dplib.threading.sid.head dummy

execute unless score global dplib.threading.sid matches 2.. run scoreboard players add global dplib.threading.sid 2

function dplib.threading:ids