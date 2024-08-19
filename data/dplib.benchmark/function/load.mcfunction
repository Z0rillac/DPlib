#> dplib.benchmark:load
# Loads dplib.benchmark. Put it in your datapack load/reset file before your code.
# @public
# @context load

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.benchmark:private/module_manager/global/load
function dplib.benchmark:private/module_manager/declare_instance
execute if score dplib.benchmark.instances dplib.main matches 1 run function dplib.benchmark:private/module/load