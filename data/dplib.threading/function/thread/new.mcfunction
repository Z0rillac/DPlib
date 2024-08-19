#> dplib.threading:thread/new
# Creates a new thread with a defined context. [What's a thread ?](../DOCS.md)  
# When it is created, the thread is automatically considered as a child of the entity that created it.  
# By default, the new thread has the tag `dplib.threading.thread.new`, allowing you more customization on the newly created thread. You must remove this tag after running this, or disfunctions may occur.
# ***
# Parameters -> score `dplib.threading.in` :  
# - `$at` : specifies how the context is defined  
# > - `#threading.here dplib.enum` : where this is executed
# > - `#threading.xyz dplib.enum` : position coordinates  
# >> - `$x` : x position  
# >> - `$y` : y position  
# >> - `$z` : z position  
# > - `#threading.xyzxy dplib.enum` : position and rotation coordinates  
# >> - `$x` : x position  
# >> - `$y` : y position  
# >> - `$z` : z position  
# >> - `$ry` : y rotation  
# >> - `$rz` : z rotation  
# > - `#threading.herexy dplib.enum` : rotation coordinates  
# >> - `$ry` : y rotation  
# >> - `$rz` : z rotation  
# > - `#threading.xyz64 dplib.enum` : position coordinates scaled to 64  
# >> - `$x` : x position  
# >> - `$y` : y position  
# >> - `$z` : z position  
# > - `#threading.xyzxy64 dplib.enum` : position and rotation coordinates scaled to 64  
# >> - `$x` : x position  
# >> - `$y` : y position  
# >> - `$z` : z position  
# >> - `$ry` : y rotation  
# >> - `$rz` : z rotation  
# > - `#threading.herexy64 dplib.enum` : rotation coordinates scaled to 64  
# >> - `$ry` : y rotation  
# >> - `$rz` : z rotation  
# - `$function` : specifies the function that the thread executes  
# ***
# Example code :  
# ```mcfunction
# scoreboard players operation $at dplib.threading.in = #threading.xyz dplib.enum
# scoreboard players set $x dplib.threading.in -1
# scoreboard players set $y dplib.threading.in -60
# scoreboard players set $z dplib.threading.in -14
# scoreboard players operation $function dplib.threading.in = #mypack.foo dplib.threading.function.enum 
# function dplib.threading:thread/new
# tag @e[tag=dplib.threading.thread.new] add mypack.foo
# tag @e[tag=dplib.threading.thread.new] remove dplib.threading.thread.new
# ```
# ***
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.threading:private/module/thread/new/run