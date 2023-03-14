#> dplib.datetime:private/module/get_local/run
# Get the current local time.
# Called at tick, please do not use.
# @within dplib.datetime:private/module/tick
# @context each tick by dplib.datetime module
# @private

execute in dplib.datetime:void run data modify storage dplib.datetime:time root.get_local.string set string block 0 0 0 LastOutput 664 672

scoreboard players set local_hours dplib.datetime.main 0
scoreboard players set local_minutes dplib.datetime.main 0
scoreboard players set local_seconds dplib.datetime.main 0

data modify storage dplib.datetime:time root.get_local.digit set string storage dplib.datetime:time root.get_local.string 0 1
function dplib.datetime:private/module/get_local/read
scoreboard players operation #digit dplib.temp *= 10 dplib.const
scoreboard players operation local_hours dplib.datetime.main += #digit dplib.temp
data modify storage dplib.datetime:time root.get_local.digit set string storage dplib.datetime:time root.get_local.string 1 2
function dplib.datetime:private/module/get_local/read
scoreboard players operation local_hours dplib.datetime.main += #digit dplib.temp

data modify storage dplib.datetime:time root.get_local.digit set string storage dplib.datetime:time root.get_local.string 3 4
function dplib.datetime:private/module/get_local/read
scoreboard players operation #digit dplib.temp *= 10 dplib.const
scoreboard players operation local_minutes dplib.datetime.main += #digit dplib.temp
data modify storage dplib.datetime:time root.get_local.digit set string storage dplib.datetime:time root.get_local.string 4 5
function dplib.datetime:private/module/get_local/read
scoreboard players operation local_minutes dplib.datetime.main += #digit dplib.temp

data modify storage dplib.datetime:time root.get_local.digit set string storage dplib.datetime:time root.get_local.string 6 7
function dplib.datetime:private/module/get_local/read
scoreboard players operation #digit dplib.temp *= 10 dplib.const
scoreboard players operation local_seconds dplib.datetime.main += #digit dplib.temp
data modify storage dplib.datetime:time root.get_local.digit set string storage dplib.datetime:time root.get_local.string 7 8
function dplib.datetime:private/module/get_local/read
scoreboard players operation local_seconds dplib.datetime.main += #digit dplib.temp