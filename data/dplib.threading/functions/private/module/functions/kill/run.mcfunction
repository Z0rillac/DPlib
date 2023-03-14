#> dplib.threading:private/module/functions/kill/run
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

scoreboard players remove threads dplib.threading.main 1

scoreboard players operation target dplib.threading.sid = @s dplib.threading.sid.head
execute as @e[predicate=dplib.threading:linked_to_limbs, tag=dplib.threading.thread] run function dplib.threading:private/module/functions/kill/run
kill @e[predicate=dplib.threading:linked_to_limbs]
kill @s