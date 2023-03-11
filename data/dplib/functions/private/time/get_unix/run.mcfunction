#> dplib:private/time/get_unix/run
# Download the Current Epoch Unix Timestamp.
# Called at load, please do not use, this can run 8192 time per month due to minecraft limitations.
# The Unix Timestamp is automatically updated each tick.
# @within dplib:private/time/load
# @context at load by dplib.time module
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players set got_unix dplib.time 0
execute in dplib:void run function dplib:private/time/get_unix/download