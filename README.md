# Datapack library
DPlib is a function library for datapack developed in mcfunction. It is designed so that you can directly include the module you want in your datapack, without worrying about performance or compatibility and without creating dependencies. It is designed for performance and simplicity, it can be used in any datapack requiring simple or complex functions while being as fast as possible.

This library adds:
- math functions and tools
- advanced and ultra fast random generator
- code threading
- scoreboard ID
- Real world time and date
- More (WIP)

## How it works

You just need to import the module(s) you need (they work independently) into the data folder of your datapack, you then need to load it by executing this command at the beginning of your datapack load file: 
```
function dplib.<module>:load
```

To ensure proper de-installation, you must include this line in the uninstallation file
```
function dplib.<module>:uninstall
```

In general, the input scoreboard for parameters is `dplib.<module>.in` and the output scoreboard is `dplib.<module>.in`. The automatically managed variables are in `dplib.<module>.main`

For example, you can calculate how far away the nearest cow is:
```mcfunction
# Puts the player's coordinates in parameters of the function
execute as Someone store result score $x1 dplib.math.in run data get entity @s Pos[0]
execute as Someone store result score $y1 dplib.math.in run data get entity @s Pos[1]
execute as Someone store result score $z1 dplib.math.in run data get entity @s Pos[2]
# Puts the nearest cow coordinates in parameters of the function
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $x2 dplib.math.in run data get entity @s Pos[0]
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $y2 dplib.math.in run data get entity @s Pos[1]
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $z2 dplib.math.in run data get entity @s Pos[2]
# Calculates the distance using a tool provided by this library
function dplib.math:tools/distance
# Displays the result above the player's hotbar
title Someone actionbar [{"text":"Nearest Cow : ","color":"red"},{"score":{"name":"$out","objective":"dplib.math.out"},"color":"yellow"},{"text":"m","color":"yellow"}]
```

Or you can simply get the real world timestamp live:
```mcfunction
scoreboard players get unix_timestamp dplib.datetime.main
```

This library is made to be used with [Data-pack Helper Plus](https://marketplace.visualstudio.com/items?itemName=SPGoding.datapack-language-server) extension, it is easier to find the functions thanks to the auto completion provided by the extension and a library of aliases.

The complete documentation can be found [here.](https://github.com/Z0rillac/DPlib/blob/main/DOCS.md)

It is advisable to credit the project :
```
This datapack uses DPlib
https://github.com/Z0rillac/DPlib
```
