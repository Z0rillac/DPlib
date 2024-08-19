#> dplib.threading:private/module_manager/global/uninstall
# Uninstall dplib global data.
# @private
# @context module_manager

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players set #loaded_instances dplib.temp 0
scoreboard players operation #loaded_instances dplib.temp += dplib.benchmark.instances dplib.main
scoreboard players operation #loaded_instances dplib.temp += dplib.datetime.instances dplib.main
scoreboard players operation #loaded_instances dplib.temp += dplib.math.instances dplib.main
scoreboard players operation #loaded_instances dplib.temp += dplib.threading.instances dplib.main

execute if score #loaded_instances dplib.temp matches ..0 run function dplib.threading:private/module_manager/global/uninstall_if