#> dplib.threading:private/module_manager/global/load
# Loads dplib global data.
# @private
# @context module_manager

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

#>
# Version control  
# Module loading
# Module uninstalling
# @private
#declare objective dplib.main

#>
# Execution  
# Threaded execution
# @private
#declare objective dplib.exec

#>
# Temporary vars
# @private
#declare objective dplib.temp

#>
# Enum fake players  
# Contains all the basic enums, can be completed.
# @public
#declare objective dplib.enum

#>
# Useful constants  
# Contains a bunch of useful constants, can be completed.
# @public
#declare objective dplib.const

scoreboard objectives add dplib.main dummy
scoreboard objectives add dplib.exec dummy
scoreboard objectives add dplib.temp dummy
scoreboard objectives add dplib.enum dummy
scoreboard objectives add dplib.const dummy

function dplib.threading:private/module_manager/global/enum
function dplib.threading:private/module_manager/global/const