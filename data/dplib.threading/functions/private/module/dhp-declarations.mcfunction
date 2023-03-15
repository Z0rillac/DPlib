#> dplib.threading:private/module/dhp-declarations
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

#>
# Predicate to select all limbs of the "head" entity.
# ```mcfunction
# # Sets the target SID to the one of the nearest ship
# scoreboard players operation target dplib.sid = @e[tag=ship,sort=nearest,limit=1] dplib.sid.head
# # Fire all the guns of the ship (being linked as a member) by using the predicate dplib:sid/linked_to_limbs
# execute as @e[tag=guns,predicate=dplib:sid/linked_to_limbs] at @s run function mypack:ship/guns/fire
# ```
# @public
# @context SID head
#declare predicate dplib.threading:linked_to_limbs

#>
# Predicate to select the "head" entity from one of his limbs.
# ```mcfunction
# # Sets the target SID to the head of the current limbs (the seat of the ship)
# scoreboard players operation target dplib.sid = @s[tag=seat] dplib.sid.limbs
# # Execute the function mypack:ship/rotate from the ship using the predicate dplib:sid/linked_to_head
# execute as @e[tag=ship,predicate=dplib:sid/linked_to_head] at @s run function mypack:ship/rotate
# ```
# @public
# @context SID limb
#declare predicate dplib.threading:linked_to_head

#alias entity dplib.sid.target @e[tag=dplib.sid.target,limit=1]
#alias entity dplib.thread.new_thread @e[tag=dplib.thread.new_thread,limit=1]