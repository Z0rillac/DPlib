#> dplib.threading:private/module/dhp-declarations
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

#>
# Predicate to select an entity/thread if it is a child of the entity/thread executing this.
# ```mcfunction
# # Sets the target to one of the nearest ship
# scoreboard players operation target dplib.sid = @e[tag=ship,sort=nearest,limit=1] dplib.sid.head
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
# scoreboard players operation target dplib.sid = @s[tag=seat] dplib.sid.limbs
# # Execute the function mypack:ship/rotate from the ship using the predicate dplib.threading:parent
# execute as @e[tag=ship,predicate=dplib.threading:parent] at @s run function mypack:ship/rotate
# ```
# @public
# @context child
#declare predicate dplib.threading:parent

#>
# eazeazeaea
#declare tag dplib.thread.target
#declare tag dplib.threading.thread.new
#declare tag dplib.threading.thread

#alias entity dplib.threading.thread.new @e[tag=dplib.threading.thread.new,limit=1]