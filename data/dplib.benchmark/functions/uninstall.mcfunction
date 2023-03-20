#> dplib.benchmark:uninstall
# Uninstall dplib.benchmark. Put it in your uninstall function.
# @public
# @context uninstall

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute if score dplib.benchmark.instances dplib.main matches ..1 run function dplib.benchmark:private/module/uninstall
scoreboard players remove dplib.benchmark.instances dplib.main 1
function dplib.benchmark:private/module_manager/global/uninstall