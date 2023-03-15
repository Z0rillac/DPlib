#> dplib.datetime:private/module/get_unix/test_bytes
# @within dplib.datetime:private/module/get_unix/decode
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute store result score #b0 dplib.temp run data get storage dplib.datetime:time root.get_unix.bytes[0] 1
execute store result score #b1 dplib.temp run data get storage dplib.datetime:time root.get_unix.bytes[1] 1
execute store result score #b2 dplib.temp run data get storage dplib.datetime:time root.get_unix.bytes[2] 1
execute store result score #b3 dplib.temp run data get storage dplib.datetime:time root.get_unix.bytes[3] 1
execute store result score #b4 dplib.temp run data get storage dplib.datetime:time root.get_unix.bytes[4] 1
execute store result score #b5 dplib.temp run data get storage dplib.datetime:time root.get_unix.bytes[5] 1
execute store result score #b6 dplib.temp run data get storage dplib.datetime:time root.get_unix.bytes[6] 1
execute store result score #b7 dplib.temp run data get storage dplib.datetime:time root.get_unix.bytes[7] 1

execute if score #b0 dplib.temp matches 0 if score #b1 dplib.temp matches 0 if score #b2 dplib.temp matches 1 if score #b3 dplib.temp matches 1 if score #b4 dplib.temp matches 0 if score #b5 dplib.temp matches 0 if score #b6 dplib.temp matches 0 if score #b7 dplib.temp matches 0 run scoreboard players set #digit dplib.temp 0
execute if score #b0 dplib.temp matches 0 if score #b1 dplib.temp matches 0 if score #b2 dplib.temp matches 1 if score #b3 dplib.temp matches 1 if score #b4 dplib.temp matches 0 if score #b5 dplib.temp matches 0 if score #b6 dplib.temp matches 0 if score #b7 dplib.temp matches 1 run scoreboard players set #digit dplib.temp 1
execute if score #b0 dplib.temp matches 0 if score #b1 dplib.temp matches 0 if score #b2 dplib.temp matches 1 if score #b3 dplib.temp matches 1 if score #b4 dplib.temp matches 0 if score #b5 dplib.temp matches 0 if score #b6 dplib.temp matches 1 if score #b7 dplib.temp matches 0 run scoreboard players set #digit dplib.temp 2
execute if score #b0 dplib.temp matches 0 if score #b1 dplib.temp matches 0 if score #b2 dplib.temp matches 1 if score #b3 dplib.temp matches 1 if score #b4 dplib.temp matches 0 if score #b5 dplib.temp matches 0 if score #b6 dplib.temp matches 1 if score #b7 dplib.temp matches 1 run scoreboard players set #digit dplib.temp 3
execute if score #b0 dplib.temp matches 0 if score #b1 dplib.temp matches 0 if score #b2 dplib.temp matches 1 if score #b3 dplib.temp matches 1 if score #b4 dplib.temp matches 0 if score #b5 dplib.temp matches 1 if score #b6 dplib.temp matches 0 if score #b7 dplib.temp matches 0 run scoreboard players set #digit dplib.temp 4
execute if score #b0 dplib.temp matches 0 if score #b1 dplib.temp matches 0 if score #b2 dplib.temp matches 1 if score #b3 dplib.temp matches 1 if score #b4 dplib.temp matches 0 if score #b5 dplib.temp matches 1 if score #b6 dplib.temp matches 0 if score #b7 dplib.temp matches 1 run scoreboard players set #digit dplib.temp 5
execute if score #b0 dplib.temp matches 0 if score #b1 dplib.temp matches 0 if score #b2 dplib.temp matches 1 if score #b3 dplib.temp matches 1 if score #b4 dplib.temp matches 0 if score #b5 dplib.temp matches 1 if score #b6 dplib.temp matches 1 if score #b7 dplib.temp matches 0 run scoreboard players set #digit dplib.temp 6
execute if score #b0 dplib.temp matches 0 if score #b1 dplib.temp matches 0 if score #b2 dplib.temp matches 1 if score #b3 dplib.temp matches 1 if score #b4 dplib.temp matches 0 if score #b5 dplib.temp matches 1 if score #b6 dplib.temp matches 1 if score #b7 dplib.temp matches 1 run scoreboard players set #digit dplib.temp 7
execute if score #b0 dplib.temp matches 0 if score #b1 dplib.temp matches 0 if score #b2 dplib.temp matches 1 if score #b3 dplib.temp matches 1 if score #b4 dplib.temp matches 1 if score #b5 dplib.temp matches 0 if score #b6 dplib.temp matches 0 if score #b7 dplib.temp matches 0 run scoreboard players set #digit dplib.temp 8
execute if score #b0 dplib.temp matches 0 if score #b1 dplib.temp matches 0 if score #b2 dplib.temp matches 1 if score #b3 dplib.temp matches 1 if score #b4 dplib.temp matches 1 if score #b5 dplib.temp matches 0 if score #b6 dplib.temp matches 0 if score #b7 dplib.temp matches 1 run scoreboard players set #digit dplib.temp 9