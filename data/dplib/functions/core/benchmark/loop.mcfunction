#> dplib:core/benchmark/loop
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players add executions dplib.benchmark 1
execute store result score time dplib.benchmark run worldborder get
execute if score time dplib.benchmark matches 2.. run function dplib:benchmark/benchmark