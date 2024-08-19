#> dplib.threading:load
# Loads dplib.threading. Put it in your datapack load/reset file before your code.
# @public
# @context load

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.threading:private/module_manager/global/load
function dplib.threading:private/module_manager/declare_instance
execute if score dplib.threading.instances dplib.main matches 1 run function dplib.threading:private/module/load