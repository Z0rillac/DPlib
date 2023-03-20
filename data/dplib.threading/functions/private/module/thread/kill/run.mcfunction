#> dplib.threading:private/module/thread/kill/run
# @private

execute if score $childs dplib.threading.in = #true dplib.enum run function dplib.threading:private/module/thread/kill/check

execute if score $this dplib.threading.in = #false dplib.enum run tag @s remove dplib.threading.thread.kill

scoreboard players operation $childs dplib.threading.in = #true dplib.enum
scoreboard players operation $this dplib.threading.in = #true dplib.enum

kill @e[tag=dplib.threading.thread.kill]