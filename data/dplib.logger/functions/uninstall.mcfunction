#> dplib.logger:uninstall
# Uninstall dplib.logger. Put it in your uninstall function.
# @public
# @context uninstall

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute if score dplib.logger.instances dplib.main matches ..1 run function dplib.logger:private/module/uninstall
scoreboard players remove dplib.logger.instances dplib.main 1
function dplib.logger:private/module_manager/global/uninstall