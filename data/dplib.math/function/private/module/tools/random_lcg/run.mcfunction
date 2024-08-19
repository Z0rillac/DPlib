#> dplib.math:private/module/tools/random_lcg/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players operation lcg.seed dplib.math.main *= lcg.multiplier dplib.math.main
scoreboard players operation lcg.seed dplib.math.main += lcg.increment dplib.math.main
scoreboard players operation $out dplib.math.out = lcg.seed dplib.math.main