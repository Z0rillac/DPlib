## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard objectives remove dplib.temp
scoreboard objectives remove dplib.in
scoreboard objectives remove dplib.out
scoreboard objectives remove dplib.const
scoreboard objectives remove dplib.time

scoreboard objectives remove dplib.sid
scoreboard objectives remove dplib.sid.limbs
scoreboard objectives remove dplib.sid.head

scoreboard objectives remove dplib.benchmark

scoreboard objectives remove dplib.thread
scoreboard objectives remove dplib.thread.threads

execute as @e[tag=dplib.thread,limit=1] run function dplib:thread/kill