## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

worldborder set 10001 0
worldborder set 1 10

gamerule maxCommandChainLength 2147483647

scoreboard players set executions dplib.benchmark 0

function dplib:benchmark/benchmark

worldborder set 59999968

tellraw @s ["",{"text":"Executed ","color":"gold"},{"score":{"name":"executions","objective":"dplib.benchmark"},"color":"green"},{"text":" times.","color":"gold"}]