#> dplib.math:private/module/functions/tan_bsa/bsa/0_511
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute if score #a dplib.temp matches 0..255 run function dplib.math:private/module/functions/tan_bsa/bsa/0_255
execute if score #a dplib.temp matches 256..511 run function dplib.math:private/module/functions/tan_bsa/bsa/256_511
