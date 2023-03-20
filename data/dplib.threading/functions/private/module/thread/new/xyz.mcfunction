#> dplib.threading:private/module/thread/new/xyz
# @within dplib.threading:private/module/thread/new/run
# @private

execute store result entity @s Pos[0] double 1 run scoreboard players get $x dplib.threading.in
execute store result entity @s Pos[1] double 1 run scoreboard players get $y dplib.threading.in
execute store result entity @s Pos[2] double 1 run scoreboard players get $z dplib.threading.in