#> dplib.threading:private/module_manager/global/const
# Loads dplib constants.
# @private
# @context module_manager

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

#numbers
#> The score containing all constants from dplib.
#declare objective dplib.const

#> Constant value in dplib.const  
#declare score_holder -1000000000
#> Constant value in dplib.const  
#declare score_holder -100000000
#> Constant value in dplib.const  
#declare score_holder -10000000
#> Constant value in dplib.const  
#declare score_holder -1000000
#> Constant value in dplib.const  
#declare score_holder -100000
#> Constant value in dplib.const  
#declare score_holder -10000
#> Constant value in dplib.const  
#declare score_holder -1000
#> Constant value in dplib.const  
#declare score_holder -100
#> Constant value in dplib.const  
#declare score_holder -10
#> Constant value in dplib.const  
#declare score_holder -1
#> Constant value in dplib.const  
#declare score_holder 0
#> Constant value in dplib.const  
#declare score_holder 1
#> Constant value in dplib.const  
#declare score_holder 10
#> Constant value in dplib.const  
#declare score_holder 100
#> Constant value in dplib.const  
#declare score_holder 1000
#> Constant value in dplib.const  
#declare score_holder 10000
#> Constant value in dplib.const  
#declare score_holder 100000
#> Constant value in dplib.const  
#declare score_holder 1000000
#> Constant value in dplib.const  
#declare score_holder 10000000
#> Constant value in dplib.const  
#declare score_holder 100000000
#> Constant value in dplib.const  
#declare score_holder 1000000000
#> Constant value in dplib.const  
#declare score_holder 40000
#> Constant value in dplib.const  
#declare score_holder 40500
#> Constant value in dplib.const  
#declare score_holder 2
#> Constant value in dplib.const  
#declare score_holder 3
#> Constant value in dplib.const  
#declare score_holder 6
#> Constant value in dplib.const  
#declare score_holder 180
#> Constant value in dplib.const  
#declare score_holder 360
#> Constant value in dplib.const  
#declare score_holder 20
#> Constant value in dplib.const  
#declare score_holder 60
#> Constant value in dplib.const  
#declare score_holder 3600
#> Constant value in dplib.const  
#declare score_holder 86400
#> Constant value in dplib.const  
# 2^31-1 = `2147483647`
#declare score_holder 2^31-1
#> Constant value in dplib.const  
# -2^31 = `-2147483648`
#declare score_holder -2^31
#> Constant value in dplib.const  
# All powers of 2
#declare score_holder 2^<0..30>

#minecraft
#> Constant value in dplib.const  
# The default value for the gamerule sendCommandFeedback  
# default_sendCommandFeedback = `#true`
#declare score_holder default_sendCommandFeedback 
#> Constant value in dplib.const  
# The default value for the gamerule maxEntityCramming  
# default_maxEntityCramming = `24`
#declare score_holder default_maxEntityCramming 
#> Constant value in dplib.const  
# The default value for the gamerule maxCommandChainLength  
# default_maxCommandChainLength = `65536`
#declare score_holder default_maxCommandChainLength 
#> Constant value in dplib.const  
# The maximum value of the worldborder  
# max_worldborder = `59999968`
#declare score_holder max_worldborder 
#> Constant value in dplib.const  
# The scale of the nbt values stored in a score to work on floating numbers.  
# Multiply it by `0.015625` when you set the nbt to the stored score.  
# nbt_scale = `64`  
# Example :  
# ```mcfunction
# # Store the x Pos of entity to x mypack.score
# execute store result score x mypack.score run data get entity @s Pos[0] 64
#
# # Divide it by 2
# scoreboard players operation x mypack.score /= 2 dplib.const
#
# # Set the result to the x Pos of entity
# execute store result entity @s Pos[0] double 0.015625 run scoreboard players get x mypack.score
# ```
#declare score_holder nbt_scale 
#> Constant value in dplib.const  
# The maximum value that a score can have  
# max_score_value = `2147483647`
#declare score_holder max_score_value 
#> Constant value in dplib.const  
# The minimum value that a score can have  
# max_score_value = `-2147483648`
#declare score_holder min_score_value


#numbers
scoreboard players set -1000000000 dplib.const -1000000000
scoreboard players set -100000000 dplib.const -100000000
scoreboard players set -10000000 dplib.const -10000000
scoreboard players set -1000000 dplib.const -1000000
scoreboard players set -100000 dplib.const -100000
scoreboard players set -10000 dplib.const -10000
scoreboard players set -1000 dplib.const -1000
scoreboard players set -100 dplib.const -100
scoreboard players set -10 dplib.const -10
scoreboard players set -1 dplib.const -1
scoreboard players set 0 dplib.const 0
scoreboard players set 1 dplib.const 1
scoreboard players set 10 dplib.const 10
scoreboard players set 100 dplib.const 100
scoreboard players set 1000 dplib.const 1000
scoreboard players set 10000 dplib.const 10000
scoreboard players set 100000 dplib.const 100000
scoreboard players set 1000000 dplib.const 1000000
scoreboard players set 10000000 dplib.const 10000000
scoreboard players set 100000000 dplib.const 100000000
scoreboard players set 1000000000 dplib.const 1000000000
scoreboard players set 40000 dplib.const 40000
scoreboard players set 40500 dplib.const 40500
scoreboard players set 2 dplib.const 2
scoreboard players set 3 dplib.const 3
scoreboard players set 4 dplib.const 4
scoreboard players set 400 dplib.const 400
scoreboard players set 6 dplib.const 6
scoreboard players set 180 dplib.const 180
scoreboard players set 360 dplib.const 360
scoreboard players set 20 dplib.const 20
scoreboard players set 60 dplib.const 60
scoreboard players set 3600 dplib.const 3600
scoreboard players set 86400 dplib.const 86400
scoreboard players set 2^31-1 dplib.const 2147483647
scoreboard players set -2^31 dplib.const -2147483648
scoreboard players set 2^0 dplib.const 1
scoreboard players set 2^1 dplib.const 2
scoreboard players set 2^2 dplib.const 4
scoreboard players set 2^3 dplib.const 8
scoreboard players set 2^4 dplib.const 16
scoreboard players set 2^5 dplib.const 32
scoreboard players set 2^6 dplib.const 64
scoreboard players set 2^7 dplib.const 128
scoreboard players set 2^8 dplib.const 256
scoreboard players set 2^9 dplib.const 512
scoreboard players set 2^10 dplib.const 1024
scoreboard players set 2^11 dplib.const 2048
scoreboard players set 2^12 dplib.const 4096
scoreboard players set 2^13 dplib.const 8192
scoreboard players set 2^14 dplib.const 16384
scoreboard players set 2^15 dplib.const 32768
scoreboard players set 2^16 dplib.const 65536
scoreboard players set 2^17 dplib.const 131072
scoreboard players set 2^18 dplib.const 262144
scoreboard players set 2^19 dplib.const 524288
scoreboard players set 2^20 dplib.const 1048576
scoreboard players set 2^21 dplib.const 2097152
scoreboard players set 2^22 dplib.const 4194304
scoreboard players set 2^23 dplib.const 8388608
scoreboard players set 2^24 dplib.const 16777216
scoreboard players set 2^25 dplib.const 33554432
scoreboard players set 2^26 dplib.const 67108864
scoreboard players set 2^27 dplib.const 134217728
scoreboard players set 2^28 dplib.const 268435456
scoreboard players set 2^29 dplib.const 536870912
scoreboard players set 2^30 dplib.const 1073741824

#minecraft
scoreboard players operation default_sendCommandFeedback dplib.const = #true dplib.enum
scoreboard players set default_maxEntityCramming dplib.const 24
scoreboard players set default_maxCommandChainLength dplib.const 65536
scoreboard players set max_worldborder dplib.const 59999968
scoreboard players set nbt_scale dplib.const 64
scoreboard players set max_score_value dplib.const 2147483647
scoreboard players set min_score_value dplib.const -2147483648