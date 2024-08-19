#> dplib.datetime:private/module/uninstall
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard objectives remove dplib.datetime.main
scoreboard objectives remove dplib.datetime.in
scoreboard objectives remove dplib.datetime.out
data remove storage dplib.datetime:time root
execute in dplib.datetime:void run fill 0 0 0 0 1 0 air
execute in dplib.datetime:void run forceload remove 0 0

scoreboard players operation dplib.datetime.enabled dplib.main = #false dplib.enum

say §cPlease do not disable or uninstall the datapack, if it has been disabled automatically, please re-enable it. The datapack uses the dplib.datetime module, which cannot be unloaded because it creates a new dimension. If it is unloaded and you quit the game (or turn off the server), it will crash your world in a loop. The datapack no longer runs and does not consume performance.