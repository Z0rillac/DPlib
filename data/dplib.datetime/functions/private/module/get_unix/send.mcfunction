#> dplib.datetime:private/module/get_unix/send
# Download the Current Epoch Unix Timestamp.
# Called at load, please do not use, this can run 8192 time per month due to minecraft limitations.
# The Unix Timestamp is automatically updated each tick.
# @within dplib.datetime:private/module/load
# @context at load by dplib.datetime module
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players set waiting_time dplib.datetime.main 0
scoreboard players operation request.state dplib.datetime.main = #request.waiting dplib.enum
execute in dplib.datetime:void run function dplib.datetime:private/module/get_unix/download