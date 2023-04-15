#> dplib.datetime:private/module/get_unix/decode
# @within dplib.datetime:private/module/get_unix/tick
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation request.state dplib.datetime.main = #request.done dplib.enum
scoreboard players reset waiting_time dplib.datetime.main
scoreboard players set unix_timestamp dplib.datetime.main 0

execute in dplib.datetime:void run data modify storage dplib.datetime:time root.get_unix.base64.encoded set string block 0 1 0 SkullOwner.Properties.textures[0].Value 24 38

data modify storage dplib.datetime:time root.get_unix.bytes set value [B;]
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 0 1
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 1 2
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 2 3
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 3 4
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 4 5
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 5 6
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 6 7
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 7 8
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 8 9
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 9 10
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 10 11
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 11 12
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 12 13
function dplib.datetime:private/module/get_unix/test_chr
data modify storage dplib.datetime:time root.get_unix.base64.to_test set string storage dplib.datetime:time root.get_unix.base64.encoded 13 14
function dplib.datetime:private/module/get_unix/test_chr

function dplib.datetime:private/module/get_unix/test_bytes
scoreboard players operation #digit dplib.temp *= 1000000000 dplib.const
scoreboard players operation unix_timestamp dplib.datetime.main += #digit dplib.temp
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
function dplib.datetime:private/module/get_unix/test_bytes
scoreboard players operation #digit dplib.temp *= 100000000 dplib.const
scoreboard players operation unix_timestamp dplib.datetime.main += #digit dplib.temp
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
function dplib.datetime:private/module/get_unix/test_bytes
scoreboard players operation #digit dplib.temp *= 10000000 dplib.const
scoreboard players operation unix_timestamp dplib.datetime.main += #digit dplib.temp
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
function dplib.datetime:private/module/get_unix/test_bytes
scoreboard players operation #digit dplib.temp *= 1000000 dplib.const
scoreboard players operation unix_timestamp dplib.datetime.main += #digit dplib.temp
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
function dplib.datetime:private/module/get_unix/test_bytes
scoreboard players operation #digit dplib.temp *= 100000 dplib.const
scoreboard players operation unix_timestamp dplib.datetime.main += #digit dplib.temp
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
function dplib.datetime:private/module/get_unix/test_bytes
scoreboard players operation #digit dplib.temp *= 10000 dplib.const
scoreboard players operation unix_timestamp dplib.datetime.main += #digit dplib.temp
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
function dplib.datetime:private/module/get_unix/test_bytes
scoreboard players operation #digit dplib.temp *= 1000 dplib.const
scoreboard players operation unix_timestamp dplib.datetime.main += #digit dplib.temp
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
function dplib.datetime:private/module/get_unix/test_bytes
scoreboard players operation #digit dplib.temp *= 100 dplib.const
scoreboard players operation unix_timestamp dplib.datetime.main += #digit dplib.temp
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
function dplib.datetime:private/module/get_unix/test_bytes
scoreboard players operation #digit dplib.temp *= 10 dplib.const
scoreboard players operation unix_timestamp dplib.datetime.main += #digit dplib.temp
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
function dplib.datetime:private/module/get_unix/test_bytes
scoreboard players operation #digit dplib.temp *= 1 dplib.const
scoreboard players operation unix_timestamp dplib.datetime.main += #digit dplib.temp
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]
data remove storage dplib.datetime:time root.get_unix.bytes[0]

scoreboard players operation $timestamp dplib.datetime.in = unix_timestamp dplib.datetime.main
function dplib.datetime:private/module/conversion/timestamp_to_datetime/run

#tellraw @a ["",{"text":"year = "},{"score":{"name":"$year","objective":"dplib.datetime.out"}},{"text":"\nmonth = "},{"score":{"name":"$month","objective":"dplib.datetime.out"}},{"text":"\ndate = "},{"score":{"name":"$date","objective":"dplib.datetime.out"}},{"text":"\nhour = "},{"score":{"name":"$hour","objective":"dplib.datetime.out"}},{"text":"\nminutes = "},{"score":{"name":"$minutes","objective":"dplib.datetime.out"}},{"text":"\nseconds = "},{"score":{"name":"$seconds","objective":"dplib.datetime.out"}}]