#> dplib.datetime:private/module/conversion/timestamp_to_datetime/loop_curryear
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

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

execute if score #is_leap dplib.temp matches 1.. if score #days_since_epoch dplib.temp matches ..365 run scoreboard players set dplib.datetime.timestamp_to_date.loop dplib.exec 0
execute if score #is_leap dplib.temp matches 1.. unless score #days_since_epoch dplib.temp matches ..365 run scoreboard players remove #days_since_epoch dplib.temp 366

execute unless score #is_leap dplib.temp matches 1.. run scoreboard players remove #days_since_epoch dplib.temp 365

scoreboard players add #currYear dplib.temp 1

execute if score #days_since_epoch dplib.temp matches 365.. if score dplib.datetime.timestamp_to_date.loop dplib.exec matches 1 run function dplib.datetime:private/module/conversion/timestamp_to_datetime/loop_curryear