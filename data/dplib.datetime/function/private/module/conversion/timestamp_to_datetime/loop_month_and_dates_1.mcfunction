#> dplib.datetime:private/module/conversion/timestamp_to_datetime/loop_month_and_dates_1
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.datetime:private/module/conversion/timestamp_to_datetime/days_of_index
scoreboard players operation #extraDays-days_of_index dplib.temp = #extraDays dplib.temp
scoreboard players operation #extraDays-days_of_index dplib.temp -= #days_of_index dplib.temp
execute if score #extraDays-days_of_index dplib.temp matches ..-1 run scoreboard players set dplib.datetime.timestamp_to_date.loop dplib.exec 0
execute if score dplib.datetime.timestamp_to_date.loop dplib.exec matches 1 run scoreboard players add #month dplib.temp 1
execute if score dplib.datetime.timestamp_to_date.loop dplib.exec matches 1 run function dplib.datetime:private/module/conversion/timestamp_to_datetime/days_of_index
execute if score dplib.datetime.timestamp_to_date.loop dplib.exec matches 1 run scoreboard players operation #extraDays dplib.temp -= #days_of_index dplib.temp
execute if score dplib.datetime.timestamp_to_date.loop dplib.exec matches 1 run scoreboard players add #index dplib.temp 1
execute if score dplib.datetime.timestamp_to_date.loop dplib.exec matches 1 run function dplib.datetime:private/module/conversion/timestamp_to_datetime/loop_month_and_dates_1