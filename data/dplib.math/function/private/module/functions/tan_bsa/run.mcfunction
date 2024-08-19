#> dplib.math:private/module/functions/tan_bsa/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation #a dplib.temp = $in dplib.math.in
scoreboard players operation #a dplib.temp %= 360 dplib.const
scoreboard players set $scale dplib.math.out 10000000
function dplib.math:private/module/functions/tan_bsa/bsa/0_511