#> dplib.math:load
# Loads dplib.math. Put it in your datapack load/reset file before your code.
# @public
# @context load

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.math:private/module_manager/global/load
function dplib.math:private/module_manager/declare_instance
execute if score dplib.math.instances dplib.main matches 1 run function dplib.math:private/module/load