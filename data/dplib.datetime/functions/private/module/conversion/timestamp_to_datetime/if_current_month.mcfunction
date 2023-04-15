#> dplib.datetime:private/module/conversion/timestamp_to_datetime/if_current_month
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #index dplib.temp = #month dplib.temp
scoreboard players remove #index dplib.temp 1
function dplib.datetime:private/module/conversion/timestamp_to_datetime/days_of_index
scoreboard players operation #date dplib.temp = #days_of_index dplib.temp