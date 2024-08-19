#> dplib.math:private/module_manager/global/enum
# Loads dplib enums.
# @private
# @context module_manager

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

# Booleans
scoreboard players set #false dplib.enum 0
scoreboard players set #true dplib.enum 1

# Process state
scoreboard players set #state.disabled dplib.enum 0
scoreboard players set #state.enabled dplib.enum 1
scoreboard players set #state.stopped dplib.enum 2
scoreboard players set #state.starting dplib.enum 3
scoreboard players set #state.running dplib.enum 4
scoreboard players set #state.idle dplib.enum 5
scoreboard players set #state.stopping dplib.enum 6
scoreboard players set #state.crashed dplib.enum 7

# Process phase
scoreboard players set #state.phase.0 dplib.enum 0
scoreboard players set #state.phase.1 dplib.enum 1
scoreboard players set #state.phase.2 dplib.enum 2
scoreboard players set #state.phase.3 dplib.enum 3
scoreboard players set #state.phase.4 dplib.enum 4
scoreboard players set #state.phase.5 dplib.enum 5
scoreboard players set #state.phase.6 dplib.enum 6
scoreboard players set #state.phase.7 dplib.enum 7
scoreboard players set #state.phase.8 dplib.enum 8
scoreboard players set #state.phase.9 dplib.enum 9
scoreboard players set #state.phase.10 dplib.enum 10
scoreboard players set #state.phase.11 dplib.enum 11
scoreboard players set #state.phase.12 dplib.enum 12
scoreboard players set #state.phase.13 dplib.enum 13
scoreboard players set #state.phase.14 dplib.enum 14
scoreboard players set #state.phase.15 dplib.enum 15
scoreboard players set #state.phase.16 dplib.enum 16
scoreboard players set #state.phase.17 dplib.enum 17
scoreboard players set #state.phase.18 dplib.enum 18
scoreboard players set #state.phase.19 dplib.enum 19
scoreboard players set #state.phase.20 dplib.enum 20
scoreboard players set #state.phase.21 dplib.enum 21
scoreboard players set #state.phase.22 dplib.enum 22
scoreboard players set #state.phase.23 dplib.enum 23
scoreboard players set #state.phase.24 dplib.enum 24
scoreboard players set #state.phase.25 dplib.enum 25
scoreboard players set #state.phase.26 dplib.enum 26
scoreboard players set #state.phase.27 dplib.enum 27
scoreboard players set #state.phase.28 dplib.enum 28
scoreboard players set #state.phase.29 dplib.enum 29
scoreboard players set #state.phase.30 dplib.enum 30
scoreboard players set #state.phase.31 dplib.enum 31

# Request state
scoreboard players set #request.sending dplib.enum 000
scoreboard players set #request.waiting dplib.enum 100
scoreboard players set #request.done dplib.enum 200
scoreboard players set #request.received dplib.enum 202
scoreboard players set #request.timeout dplib.enum 408

# DPlib version
scoreboard players set #dplib.version.v1.0 dplib.enum 0
scoreboard players set #dplib.version.v1.1 dplib.enum 1
scoreboard players set #dplib.version.v1.2 dplib.enum 2