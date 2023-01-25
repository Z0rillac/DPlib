## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players remove threads dplib.thread 1

scoreboard players operation search dplib.sid = @s dplib.sid.head
execute as @e[predicate=dplib:sid/linked_to_limbs, tag=dplib.thread] run function dplib:thread/kill
kill @e[predicate=dplib:sid/linked_to_limbs]
kill @s