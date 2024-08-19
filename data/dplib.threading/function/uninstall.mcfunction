#> dplib.threading:uninstall
# Uninstall dplib.threading. Put it in your uninstall function.
# @public
# @context uninstall

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute if score dplib.threading.instances dplib.main matches ..1 run function dplib.threading:private/module/uninstall
scoreboard players remove dplib.threading.instances dplib.main 1
function dplib.threading:private/module_manager/global/uninstall