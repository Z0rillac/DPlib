#> dplib.threading:private/module/hierarchy/set_child_of/run
# @private

function dplib.threading:private/module/hierarchy/setup/run
execute as @e[tag=dplib.threading.target] run function dplib.threading:private/module/hierarchy/setup/run

scoreboard players operation @s dplib.threading.child = @e[tag=dplib.threading.target] dplib.threading.parent
tag @e[tag=dplib.threading.target] remove dplib.threading.target