#> dplib.logger:load
# Loads dplib.logger. Put it in your datapack load/reset file before your code.
# @public
# @context load

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.logger:private/module_manager/global/load
function dplib.logger:private/module_manager/declare_instance
execute if score dplib.logger.instances dplib.main matches 1 run function dplib.logger:private/module/load