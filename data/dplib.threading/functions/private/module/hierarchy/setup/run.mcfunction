#> dplib.threading:private/module/hierarchy/setup/run
# @private

scoreboard players add @s dplib.threading.parent 0
execute if score @s dplib.threading.parent matches 0 run function dplib.threading:private/module/hierarchy/setup/setup