#> dplib.threading:private/module/thread/kill/check
# @within dplib.threading:private/module/thread/kill/run
# @private

tag @s add dplib.threading.thread.kill
scoreboard players operation target dplib.threading.main = @s dplib.threading.parent
execute unless score target dplib.threading.main matches 0 as @e[predicate=dplib.threading:child] run function dplib.threading:private/module/thread/kill/check