#> dplib:private/aliases
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

#>
# **Has one in two chance of returning `true`.**
# ```mcfunction
# execute if predicate dplib:random_binary run ...
# ```
#declare predicate dplib:random_binary

#>
# **Predicate to select all limbs of the "head" entity**
# ```mcfunction
# # Sets the target SID to the one of the nearest ship
# scoreboard players operation search dplib.sid = @e[tag=ship,sort=nearest,limit=1] dplib.sid.head
# # Fire all the guns of the ship (being linked as a member) by using the predicate dplib:sid/linked_to_limbs
# execute as @e[tag=guns,predicate=dplib:sid/linked_to_limbs] at @s run function mypack:ship/guns/fire
# ```
#declare predicate dplib:sid/linked_to_limbs

#>
# **Predicate to select the "head" entity from one of his limbs.**
# ```mcfunction
# # Sets the target SID to the head of the current limbs (the seat of the ship)
# scoreboard players operation search dplib.sid = @s[tag=seat] dplib.sid.limbs
# # Execute the function mypack:ship/rotate from the ship using the predicate dplib:sid/linked_to_head
# execute as @e[tag=ship,predicate=dplib:sid/linked_to_head] at @s run function mypack:ship/rotate
# ```
#declare predicate dplib:sid/linked_to_head

#declare score_holder $in
#declare score_holder $in1
#declare score_holder $in2
#declare score_holder $out
#declare score_holder $min
#declare score_holder $max
#declare score_holder $number
#declare score_holder $exponent
#declare score_holder $scale

#declare objective dplib.const

#declare score_holder -1000000000
#declare score_holder -100000000
#declare score_holder -10000000
#declare score_holder -1000000
#declare score_holder -100000
#declare score_holder -10000
#declare score_holder -1000
#declare score_holder -100
#declare score_holder -10
#declare score_holder -1
#declare score_holder 0
#declare score_holder 1
#declare score_holder 10
#declare score_holder 100
#declare score_holder 1000
#declare score_holder 10000
#declare score_holder 100000
#declare score_holder 1000000
#declare score_holder 10000000
#declare score_holder 100000000
#declare score_holder 1000000000
#declare score_holder 2
#declare score_holder 3
#declare score_holder 180
#declare score_holder 360
#declare score_holder 2^31-1
#declare score_holder -2^31

#declare score_holder constant_scale
#declare score_holder pi
#declare score_holder tau
#declare score_holder e

#declare score_holder 2^<0..30>

#alias entity dplib.sid.target @e[tag=dplib.sid.target,limit=1]
#alias entity dplib.thread.new_thread @e[tag=dplib.thread.new_thread,limit=1]