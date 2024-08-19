#> dplib.threading:hierarchy/set_child_of
# Defines the entity/thread executing this as a child of the entity/thread with the `dplib.threading.target` tag.
# The tag is automatically removed.
# ***
# Example code :  
# ```mcfunction
# tag @e[tag=ship.seat] add dplib.threading.target
# function dplib.threading:hierarchy/set_child_of
# ```
# ***
# @public
# @context entity/thread

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.threading:private/module/hierarchy/set_child_of/run

