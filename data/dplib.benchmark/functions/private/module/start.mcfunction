#> dplib.benchmark:private/module/start
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

tellraw @s {"text":"Start benchmark execution for 10 seconds ...","color":"gold"}

worldborder set 10001 0
worldborder set 1 10

gamerule maxCommandChainLength 2147483647

scoreboard players set executions dplib.benchmark.main 0

function dplib.benchmark:benchmark

worldborder set 59999968

#µs
scoreboard players set µs dplib.benchmark.main 10000000
scoreboard players operation µs dplib.benchmark.main /= executions dplib.benchmark.main

#executions/tick
execute store result storage dplib.benchmark:main root.executionstick float 0.005 run scoreboard players get executions dplib.benchmark.main
data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick
execute store result score length dplib.benchmark.main run data get storage dplib.benchmark:main root.executionstick
execute if score length dplib.benchmark.main matches 1 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 0
execute if score length dplib.benchmark.main matches 2 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 1
execute if score length dplib.benchmark.main matches 3 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 2
execute if score length dplib.benchmark.main matches 4 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 3
execute if score length dplib.benchmark.main matches 5 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 4
execute if score length dplib.benchmark.main matches 6 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 5
execute if score length dplib.benchmark.main matches 7 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 6
execute if score length dplib.benchmark.main matches 8 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 7
execute if score length dplib.benchmark.main matches 9 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 8
execute if score length dplib.benchmark.main matches 10 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 9
execute if score length dplib.benchmark.main matches 11 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 10
execute if score length dplib.benchmark.main matches 12 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 11
execute if score length dplib.benchmark.main matches 13 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 12
execute if score length dplib.benchmark.main matches 14 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 13
execute if score length dplib.benchmark.main matches 15 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 14
execute if score length dplib.benchmark.main matches 16 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 15
execute if score length dplib.benchmark.main matches 17 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 16
execute if score length dplib.benchmark.main matches 18 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 17
execute if score length dplib.benchmark.main matches 19 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 18
execute if score length dplib.benchmark.main matches 20 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 19
execute if score length dplib.benchmark.main matches 21 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 20
execute if score length dplib.benchmark.main matches 22 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 21
execute if score length dplib.benchmark.main matches 23 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 22
execute if score length dplib.benchmark.main matches 24 run data modify storage dplib.benchmark:main root.executionstick set string storage dplib.benchmark:main root.executionstick 0 23

#ms
#very long to show it without the "f" at the end lol
execute store result storage dplib.benchmark:main root.ms float 0.001 run scoreboard players get µs dplib.benchmark.main
data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms
execute store result score length dplib.benchmark.main run data get storage dplib.benchmark:main root.ms
execute if score length dplib.benchmark.main matches 1 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 0
execute if score length dplib.benchmark.main matches 2 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 1
execute if score length dplib.benchmark.main matches 3 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 2
execute if score length dplib.benchmark.main matches 4 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 3
execute if score length dplib.benchmark.main matches 5 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 4
execute if score length dplib.benchmark.main matches 6 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 5
execute if score length dplib.benchmark.main matches 7 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 6
execute if score length dplib.benchmark.main matches 8 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 7
execute if score length dplib.benchmark.main matches 9 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 8
execute if score length dplib.benchmark.main matches 10 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 9
execute if score length dplib.benchmark.main matches 11 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 10
execute if score length dplib.benchmark.main matches 12 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 11
execute if score length dplib.benchmark.main matches 13 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 12
execute if score length dplib.benchmark.main matches 14 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 13
execute if score length dplib.benchmark.main matches 15 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 14
execute if score length dplib.benchmark.main matches 16 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 15
execute if score length dplib.benchmark.main matches 17 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 16
execute if score length dplib.benchmark.main matches 18 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 17
execute if score length dplib.benchmark.main matches 19 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 18
execute if score length dplib.benchmark.main matches 20 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 19
execute if score length dplib.benchmark.main matches 21 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 20
execute if score length dplib.benchmark.main matches 22 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 21
execute if score length dplib.benchmark.main matches 23 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 22
execute if score length dplib.benchmark.main matches 24 run data modify storage dplib.benchmark:main root.ms set string storage dplib.benchmark:main root.ms 0 23


tellraw @s ["",{"text":"Code executed ","color":"gold"},{"score":{"name":"executions","objective":"dplib.benchmark"},"color":"green"},{"text":" times for 10 seconds.\nOn average ","color":"gold"},{"nbt":"root.executionstick","storage": "dplib.benchmark:main","interpret": false,"color":"green"},{"text":" executions/tick.\nOn average ","color":"gold"},{"nbt":"root.ms","storage": "dplib.benchmark:main","interpret": false,"color":"green"},{"text":"ms ","color":"green"},{"text":"per execution.","color":"gold"}]