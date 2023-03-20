#> dplib.threading:private/module/hierarchy/set_parent_of/run
# @private

scoreboard players operation @e[tag=dplib.thread.target] dplib.threading.child = @s dplib.threading.parent
tag @e[tag=dplib.thread.target] remove dplib.thread.target