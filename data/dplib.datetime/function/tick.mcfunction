#> dplib.datetime:tick
# Tick dplib.datetime. Put it in your datapack tick/main file before your code.
# @public
# @context tick

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute store result score #gametime dplib.temp run time query gametime
execute if score dplib.datetime.enabled dplib.main = #true dplib.enum if score #dplib.datetime.last_tick dplib.main < #gametime dplib.temp run function dplib.datetime:private/module/tick
scoreboard players operation #dplib.datetime.last_tick dplib.main = #gametime dplib.temp