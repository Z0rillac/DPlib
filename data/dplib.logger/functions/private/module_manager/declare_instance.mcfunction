#> dplib.logger:private/module_manager/declare_instance
# Declares an instance of dplib.logger
# @private
# @context load

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute store result score #gametime dplib.temp run time query gametime
execute if score #dplib.logger.last_load dplib.main < #gametime dplib.temp run scoreboard players set dplib.logger.instances dplib.main 0
scoreboard players operation #dplib.logger.last_load dplib.main = #gametime dplib.temp

scoreboard players add dplib.logger.instances dplib.main 1