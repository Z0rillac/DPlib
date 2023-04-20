#> dplib.math:private/module/functions/comb/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #end dplib.temp = #false dplib.enum
execute if score #end dplib.temp = #false dplib.enum store success score #end dplib.temp if score $in2 dplib.math.in > $in1 dplib.math.in run scoreboard players set $out dplib.math.out 0
execute if score #end dplib.temp = #false dplib.enum store success score #end dplib.temp if score $in2 dplib.math.in matches 0 run scoreboard players set $out dplib.math.out 1
execute if score #end dplib.temp = #false dplib.enum store success score #end dplib.temp if score $in2 dplib.math.in = $in1 dplib.math.in run scoreboard players set $out dplib.math.out 1

execute if score #end dplib.temp = #false dplib.enum run function dplib.math:private/module/functions/comb/0
