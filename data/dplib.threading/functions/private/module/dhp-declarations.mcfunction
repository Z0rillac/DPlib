#> dplib.threading:private/module/dhp-declarations
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

#>
# Predicate to select an entity/thread if it is a child of the entity/thread executing this.
# ```mcfunction
# # Sets the target to one of the nearest ship
# scoreboard players operation target dplib.threading.main = @e[tag=ship,sort=nearest,limit=1] dplib.threading.parent
# # Fire all the guns of the ship (being linked as a child) by using the predicate dplib.threading:child
# execute as @e[tag=guns,predicate=dplib.threading:child] at @s run function mypack:ship/guns/fire
# ```
# @public
# @context parent
#declare predicate dplib.threading:child

#>
# Predicate to select the parent entity/thread from one of his childs.
# ```mcfunction
# # Sets the target to the parent of the current child (the seat of the ship)
# scoreboard players operation target dplib.threading.main = @s[tag=seat] dplib.threading.child
# # Execute the function mypack:ship/rotate from the ship using the predicate dplib.threading:parent
# execute as @e[tag=ship,predicate=dplib.threading:parent] at @s run function mypack:ship/rotate
# ```
# @public
# @context child
#declare predicate dplib.threading:parent

#>
# Tag to specify the target entity/thread.
# ***
# Example code :  
# ```mcfunction
# tag @e[tag=ship.seat] add dplib.threading.target
# function dplib.threading:hierarachy/set_child_of
# ```
# ***
# @public
#declare tag dplib.threading.target

#>
# Tag that a new thread has after being created. This allows more customization. The tag must be deleted when the thread is created to avoid any dysfunction.
# ***
# Example code :  
# ```mcfunction
# ...
# function dplib.threading:thread/new
# tag @e[tag=dplib.threading.thread.new] add mypack.foo
# tag @e[tag=dplib.threading.thread.new] remove dplib.threading.thread.new
# ```
# ***
# @public
#declare tag dplib.threading.thread.new

#>
# Tag that allows to identify threads.
# ***
# @public
#declare tag dplib.threading.thread

#alias entity dplib.threading.thread.new @e[tag=dplib.threading.thread.new,limit=1]