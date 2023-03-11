#> dplib:private/time/get_local/run
# Get the current local time.
# Called at tick, please do not use.
# @within dplib:private/time/tick
# @context each tick by dplib.time module
# @private

execute in dplib:void run data modify storage dplib:time root.get_local.string set string block 0 0 0 LastOutput 664 672

scoreboard players set local_hours dplib.time 0
scoreboard players set local_minutes dplib.time 0
scoreboard players set local_seconds dplib.time 0

data modify storage dplib:time root.get_local.digit set string storage dplib:time root.get_local.string 0 1
function dplib:private/time/get_local/read
scoreboard players operation #digit dplib.temp *= 10 dplib.const
scoreboard players operation local_hours dplib.time += #digit dplib.temp
data modify storage dplib:time root.get_local.digit set string storage dplib:time root.get_local.string 1 2
function dplib:private/time/get_local/read
scoreboard players operation local_hours dplib.time += #digit dplib.temp

data modify storage dplib:time root.get_local.digit set string storage dplib:time root.get_local.string 3 4
function dplib:private/time/get_local/read
scoreboard players operation #digit dplib.temp *= 10 dplib.const
scoreboard players operation local_minutes dplib.time += #digit dplib.temp
data modify storage dplib:time root.get_local.digit set string storage dplib:time root.get_local.string 4 5
function dplib:private/time/get_local/read
scoreboard players operation local_minutes dplib.time += #digit dplib.temp

data modify storage dplib:time root.get_local.digit set string storage dplib:time root.get_local.string 6 7
function dplib:private/time/get_local/read
scoreboard players operation #digit dplib.temp *= 10 dplib.const
scoreboard players operation local_seconds dplib.time += #digit dplib.temp
data modify storage dplib:time root.get_local.digit set string storage dplib:time root.get_local.string 7 8
function dplib:private/time/get_local/read
scoreboard players operation local_seconds dplib.time += #digit dplib.temp