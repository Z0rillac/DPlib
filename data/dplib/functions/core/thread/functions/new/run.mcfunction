## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

summon marker ~ ~ ~ {Tags:["dplib","dplib.thread","dplib.thread.new_thread"]}
scoreboard players add @e[tag=dplib.thread.new_thread,limit=1] dplib.thread.threads 0

scoreboard players operation @s dplib.sid.head = global dplib.sid
scoreboard players add global dplib.sid 1

scoreboard players add threads dplib.thread 1