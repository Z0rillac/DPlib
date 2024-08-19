#> dplib.datetime:private/module/get_unix/sync
# @private

# Iterate timestamp each local seconds
scoreboard players operation #difference dplib.temp = local_seconds dplib.datetime.main
scoreboard players operation #difference dplib.temp -= #last_seconds dplib.datetime.main
execute if score #difference dplib.temp matches ..-1 run scoreboard players add #difference dplib.temp 60
scoreboard players operation unix_timestamp dplib.datetime.main += #difference dplib.temp
scoreboard players operation #last_seconds dplib.datetime.main = local_seconds dplib.datetime.main

# Avoids the mismatch between the local time and the timestamp
scoreboard players operation #unix_timestamp dplib.temp = unix_timestamp dplib.datetime.main
scoreboard players operation #unix_timestamp dplib.temp %= 10 dplib.const
scoreboard players operation #local_seconds dplib.temp = local_seconds dplib.datetime.main
scoreboard players operation #local_seconds dplib.temp %= 10 dplib.const
scoreboard players operation #unix_timestamp dplib.temp -= #local_seconds dplib.temp
scoreboard players operation unix_timestamp dplib.datetime.main -= #unix_timestamp dplib.temp
