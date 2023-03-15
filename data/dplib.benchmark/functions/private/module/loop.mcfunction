#> dplib.benchmark:private/module/loop
# @within dplib.benchmark:private/module/start
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players add executions dplib.benchmark.main 1
execute store result score time dplib.benchmark.main run worldborder get
execute if score time dplib.benchmark.main matches 2.. run function dplib.benchmark:benchmark