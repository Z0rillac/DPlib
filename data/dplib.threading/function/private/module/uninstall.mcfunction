#> dplib.threading:private/module/uninstall
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard objectives remove dplib.threading.in
scoreboard objectives remove dplib.threading.main
scoreboard objectives remove dplib.threading.parent
scoreboard objectives remove dplib.threading.child
scoreboard objectives remove dplib.threading.function

execute as @e[tag=dplib.thread,limit=1] run function dplib:thread/kill