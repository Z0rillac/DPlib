#> dplib.threading:private/module_manager/declare_instance
# Declares an instance of dplib.threading
# @private
# @context load

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute store result score #gametime dplib.temp run time query gametime
execute if score #dplib.threading.last_load dplib.main < #gametime dplib.temp run scoreboard players set dplib.threading.instances dplib.main 0
scoreboard players operation #dplib.threading.last_load dplib.main = #gametime dplib.temp

scoreboard players add dplib.threading.instances dplib.main 1