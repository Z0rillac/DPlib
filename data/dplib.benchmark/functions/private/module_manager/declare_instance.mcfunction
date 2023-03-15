#> dplib.benchmark:private/module_manager/declare_instance
# Declares an instance of dplib.benchmark
# @private
# @context load

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute store result score #gametime dplib.temp run time query gametime
execute if score #dplib.benchmark.last_load dplib.main < #gametime dplib.temp run scoreboard players set dplib.benchmark.instances dplib.main 0
scoreboard players operation #dplib.benchmark.last_load dplib.main = #gametime dplib.temp

scoreboard players add dplib.benchmark.instances dplib.main 1