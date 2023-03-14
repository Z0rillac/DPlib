#> dplib.threading:private/module/functions/new/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

summon marker ~ ~ ~ {Tags:["dplib","dplib.threading","dplib.threading.thread","dplib.threading.new_thread"]}
scoreboard players add @e[tag=dplib.threading.new_thread,limit=1] dplib.threading.thread 0

scoreboard players operation @s dplib.threading.sid.head = global dplib.threading.sid
scoreboard players add global dplib.threading.sid 1

scoreboard players add threads dplib.threading.main 1