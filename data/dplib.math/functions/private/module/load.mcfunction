#> dplib.math:private/module/load
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard objectives add dplib.math.main dummy
scoreboard objectives add dplib.math.in dummy
scoreboard objectives add dplib.math.out dummy

function dplib.math:private/module/constants

scoreboard players set lcg.multiplier dplib.math.main 1103515245
scoreboard players set lcg.increment dplib.math.main 12345
function dplib.math:tools/random
scoreboard players operation lcg.seed dplib.math.main = $out dplib.math.out