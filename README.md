# Datapack library
This is a function library for datapack developed in mcfunction. It gives you access to mathematical functions and tools. It is designed to be directly included in the data file of your datapack or to be used as a dependency of your datapack. It is designed for performance and simplicity, it can be used in any datapack requiring simple or complex functions while being as fast as possible.

This library adds:
- math functions and tools
- advanced and ultra fast random generator
- more (WIP)

## How it works

The input and output values are in `dplib.in` and `dplib.out`, then you just have to execute the desired function that will process with the parameters provided in `dplib.in`.

For example, you can calculate how far away the nearest cow is:
```mcfunction
# Puts the player's coordinates in parameters of the function
execute as Someone store result score $x1 dplib.in run data get entity @s Pos[0]
execute as Someone store result score $y1 dplib.in run data get entity @s Pos[1]
execute as Someone store result score $z1 dplib.in run data get entity @s Pos[2]
# Puts the nearest cow coordinates in parameters of the function
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $x2 dplib.in run data get entity @s Pos[0]
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $y2 dplib.in run data get entity @s Pos[1]
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $z2 dplib.in run data get entity @s Pos[2]
# Calculates the distance using a tool provided by this library
function dplib:core/math/tools/distance/run
# Displays the result above the player's hotbar
title Someone actionbar [{"text":"Nearest Cow : ","color":"red"},{"score":{"name":"$out","objective":"dplib.out"},"color":"yellow"},{"text":"m","color":"yellow"}]
```

This library is made to be used with [Data-pack Helper Plus](https://marketplace.visualstudio.com/items?itemName=SPGoding.datapack-language-server) extension, it is easier to find the functions thanks to the auto completion provided by the extension and a library of aliases.

The complete documentation can be found [here.](https://github.com/Z0rillac/DPlib/blob/main/DOCS.md)