#> dplib.threading:private/module/thread/new/setup
# @within dplib.threading:private/module/thread/new/run
# @private

tag @s add dplib
tag @s add dplib.threading
tag @s add dplib.threading.thread
tag @s add dplib.threading.thread.new

scoreboard players operation @s dplib.threading.child = target dplib.threading.main
scoreboard players operation @s dplib.threading.function.id = $function dplib.threading.in

execute if score $at dplib.threading.in = #threading.xyz dplib.enum run function dplib.threading:private/module/thread/new/xyz
execute if score $at dplib.threading.in = #threading.xyzxy dplib.enum run function dplib.threading:private/module/thread/new/xyz
execute if score $at dplib.threading.in = #threading.xyzxy dplib.enum run function dplib.threading:private/module/thread/new/xy
execute if score $at dplib.threading.in = #threading.herexy dplib.enum run function dplib.threading:private/module/thread/new/xy

execute if score $at dplib.threading.in = #threading.xyz64 dplib.enum run function dplib.threading:private/module/thread/new/xyz64
execute if score $at dplib.threading.in = #threading.xyzxy64 dplib.enum run function dplib.threading:private/module/thread/new/xyz64
execute if score $at dplib.threading.in = #threading.xyzxy64 dplib.enum run function dplib.threading:private/module/thread/new/xy64
execute if score $at dplib.threading.in = #threading.herexy64 dplib.enum run function dplib.threading:private/module/thread/new/xy64