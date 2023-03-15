#> dplib.datetime:private/module/uninstall
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard objectives remove dplib.datetime.main
data remove storage dplib.datetime:time root
execute in dplib.datetime:void run fill 0 0 0 0 1 0 air
execute in dplib.datetime:void run forceload remove 0 0