#> dplib.threading:thread/kill
# Kills the current threads and/or childs of this thread.  
# ***  
# Parameters -> score `dplib.threading.in` :  
# - `$childs` : selects the entire hierarchy from this thread. Defaults to true.  
# > - `#true dplib.enum` : true  
# > - `#false dplib.enum` : false  
# - `$this` : selects this thread. Defaults to true.    
# > - `#true dplib.enum` : true  
# > - `#false dplib.enum` : false  
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation target dplib.threading.main = @s dplib.threading.parent
# execute as @e[predicate=dplib.threading:child] run function dplib.threading:thread/kill
# ```
# ***
# @public
# @context on thread

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.threading:private/module/thread/kill/run