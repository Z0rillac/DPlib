#> dplib.threading:private/module/uninstall
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard objectives remove dplib.threading.main
scoreboard objectives remove dplib.threading.thread
scoreboard objectives remove dplib.threading.enum

scoreboard objectives remove dplib.threading.sid
scoreboard objectives remove dplib.threading.sid.limbs
scoreboard objectives remove dplib.threading.sid.head

execute as @e[tag=dplib.thread,limit=1] run function dplib:thread/kill