#> dplib.threading:private/module/hierarchy/set_child_of/run
# @private

scoreboard players operation @s dplib.threading.child = @e[tag=dplib.thread.target] dplib.threading.parent
tag @e[tag=dplib.thread.target] remove dplib.thread.target