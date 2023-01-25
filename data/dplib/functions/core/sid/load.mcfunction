## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard objectives remove dplib.player.sid
scoreboard objectives add dplib.sid dummy
scoreboard objectives add dplib.sid.limbs dummy
scoreboard objectives add dplib.sid.head dummy

execute unless score global dplib.sid matches 2.. run scoreboard players add global dplib.sid 2