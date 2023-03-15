#> dplib.datetime:uninstall
# Uninstall dplib.datetime. Put it in your uninstall function.
# @public
# @context load

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute if score dplib.datetime.instances dplib.main matches ..1 run function dplib.datetime:private/module/uninstall
scoreboard players remove dplib.datetime.instances dplib.main 1
function dplib.datetime:private/module_manager/global/uninstall