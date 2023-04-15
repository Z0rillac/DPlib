#> dplib.datetime:private/module/get_unix/tick
# @within dplib.datetime:private/module/tick
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute if score request.state dplib.datetime.main = #request.sending dplib.enum run function dplib.datetime:private/module/get_unix/download
execute if score request.state dplib.datetime.main = #request.waiting dplib.enum run function dplib.datetime:private/module/get_unix/wait
execute if score request.state dplib.datetime.main = #request.received dplib.enum in dplib.datetime:void run function dplib.datetime:private/module/get_unix/decode