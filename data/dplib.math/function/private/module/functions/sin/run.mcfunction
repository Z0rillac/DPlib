#> dplib.math:private/module/functions/sin/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

# format input
scoreboard players operation #x dplib.temp = $in dplib.math.in
scoreboard players operation #p dplib.temp = #x dplib.temp
scoreboard players operation #p dplib.temp %= 360 dplib.const
scoreboard players operation #x dplib.temp %= 180 dplib.const

# term_0 = x(180-x)
scoreboard players set #term_0 dplib.temp 180
scoreboard players operation #term_0 dplib.temp -= #x dplib.temp
scoreboard players operation #term_0 dplib.temp *= #x dplib.temp

# term_1 = 4000*term_0
scoreboard players set #term_1 dplib.temp 4000
scoreboard players operation #term_1 dplib.temp *= #term_0 dplib.temp
execute if score #p dplib.temp matches 181.. run scoreboard players operation #term_1 dplib.temp *= -1 dplib.const

# term_2 = 40500-term_0
scoreboard players set #term_2 dplib.temp 40500
scoreboard players operation #term_2 dplib.temp -= #term_0 dplib.temp

# $out = term_1/term_2
scoreboard players operation $out dplib.math.out = #term_1 dplib.temp
scoreboard players operation $out dplib.math.out /= #term_2 dplib.temp

scoreboard players set $scaled dplib.math.out 0
execute unless score $scale dplib.math.in matches 0 run function dplib.math:private/module/functions/sin/scale