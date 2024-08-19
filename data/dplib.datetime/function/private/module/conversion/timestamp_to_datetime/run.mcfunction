#> dplib.datetime:private/module/conversion/timestamp_to_datetime/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players set #currYear dplib.temp 0
scoreboard players set #days_since_epoch dplib.temp 0
scoreboard players set #extraTime dplib.temp 0
scoreboard players set #extraDays dplib.temp 0
scoreboard players set #index dplib.temp 0
scoreboard players set #date dplib.temp 0
scoreboard players set #month dplib.temp 0
scoreboard players set #hours dplib.temp 0
scoreboard players set #minutes dplib.temp 0
scoreboard players set #seconds dplib.temp 0
scoreboard players set #flag dplib.temp 0

# Calculate total days unix time T
scoreboard players operation #days_since_epoch dplib.temp = $timestamp dplib.datetime.in
scoreboard players operation #days_since_epoch dplib.temp /= 86400 dplib.const
scoreboard players operation #extraTime dplib.temp = $timestamp dplib.datetime.in
scoreboard players operation #extraTime dplib.temp %= 86400 dplib.const
scoreboard players set #currYear dplib.temp 1970

# Calculating current year
scoreboard players set dplib.datetime.timestamp_to_date.loop dplib.exec 1
execute if score #days_since_epoch dplib.temp matches 365.. if score dplib.datetime.timestamp_to_date.loop dplib.exec matches 1 run function dplib.datetime:private/module/conversion/timestamp_to_datetime/loop_curryear

# Updating extradays because it
# will give days till previous day
# and we have include current day
scoreboard players operation #extraDays dplib.temp = #days_since_epoch dplib.temp
scoreboard players add #extraDays dplib.temp 1

scoreboard players operation #currYear400 dplib.temp = #currYear dplib.temp
scoreboard players operation #currYear400 dplib.temp %= 400 dplib.const
scoreboard players operation #currYear100 dplib.temp = #currYear dplib.temp
scoreboard players operation #currYear400 dplib.temp %= 100 dplib.const
scoreboard players operation #currYear4 dplib.temp = #currYear dplib.temp
scoreboard players operation #currYear4 dplib.temp %= 4 dplib.const
scoreboard players set #test_currYear400 dplib.temp 0
scoreboard players set #test_currYear4100 dplib.temp 0
execute if score #currYear400 dplib.temp matches 0 run scoreboard players set #test_currYear400 dplib.temp 1
execute if score #currYear4 dplib.temp matches 0 unless score #currYear100 dplib.temp matches 0 run scoreboard players set #test_currYear4100 dplib.temp 1
scoreboard players operation #is_leap dplib.temp = #test_currYear400 dplib.temp
scoreboard players operation #is_leap dplib.temp += #test_currYear4100 dplib.temp

execute if score #is_leap dplib.temp matches 1.. run scoreboard players set #flag dplib.temp 1

# Calculating MONTH and DATE
scoreboard players set #month dplib.temp 0
scoreboard players set #index dplib.temp 0

execute if score #flag dplib.temp matches 1 run scoreboard players set dplib.datetime.timestamp_to_date.loop dplib.exec 1
execute if score #flag dplib.temp matches 1 if score dplib.datetime.timestamp_to_date.loop dplib.exec matches 1 run function dplib.datetime:private/module/conversion/timestamp_to_datetime/loop_month_and_dates_0

execute unless score #flag dplib.temp matches 1 run scoreboard players set dplib.datetime.timestamp_to_date.loop dplib.exec 1
execute unless score #flag dplib.temp matches 1 if score dplib.datetime.timestamp_to_date.loop dplib.exec matches 1 run function dplib.datetime:private/module/conversion/timestamp_to_datetime/loop_month_and_dates_1

# Current Month

execute if score #extraDays dplib.temp matches 1.. run scoreboard players add #month dplib.temp 1
execute if score #extraDays dplib.temp matches 1.. run scoreboard players operation #date dplib.temp = #extraDays dplib.temp

execute unless score #extraDays dplib.temp matches 1.. if score #month dplib.temp matches 2 if score #flag dplib.temp matches 1 run scoreboard players set #date dplib.temp 29
execute unless score #extraDays dplib.temp matches 1.. unless score #month dplib.temp matches 2 unless score #flag dplib.temp matches 1 run function dplib.datetime:private/module/conversion/timestamp_to_datetime/if_current_month

# Calculating HH:MM:YYYY
scoreboard players operation #hours dplib.temp = #extraTime dplib.temp
scoreboard players operation #hours dplib.temp /= 3600 dplib.const
scoreboard players operation #minutes dplib.temp = #extraTime dplib.temp
scoreboard players operation #minutes dplib.temp %= 3600 dplib.const
scoreboard players operation #minutes dplib.temp /= 60 dplib.const
scoreboard players operation #seconds dplib.temp = #extraTime dplib.temp
scoreboard players operation #seconds dplib.temp %= 3600 dplib.const
scoreboard players operation #seconds dplib.temp %= 60 dplib.const

# Update output
scoreboard players operation $year dplib.datetime.out = #currYear dplib.temp
scoreboard players operation $month dplib.datetime.out = #month dplib.temp
scoreboard players operation $date dplib.datetime.out = #date dplib.temp
scoreboard players operation $hour dplib.datetime.out = #hours dplib.temp
scoreboard players operation $minutes dplib.datetime.out = #minutes dplib.temp
scoreboard players operation $seconds dplib.datetime.out = #seconds dplib.temp