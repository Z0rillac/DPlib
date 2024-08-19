#> dplib.math:uninstall
# Uninstall dplib.math. Put it in your uninstall function.
# @public
# @context uninstall

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute if score dplib.math.instances dplib.main matches ..1 run function dplib.math:private/module/uninstall
scoreboard players remove dplib.math.instances dplib.main 1
function dplib.math:private/module_manager/global/uninstall