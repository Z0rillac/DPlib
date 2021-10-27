# Datapack library
This is a function library for datapack developed in mcfunction. It gives you access to mathematical functions and tools. It is designed to be directly included in the data file of your datapack or to be used as a dependency of your datapack. It is designed for performance and simplicity, it can be used in any datapack requiring simple or complex functions while being as fast as possible.
## How it works
The function parameters must be in the scoreboard `dplib.in`.
The values returned by the functions are in the scoreboard `dplib.out`.
The name of the parameters and the returned values are always preceded by a `$`.
The scoreboard `dplib.temp` is and can be used to save values temporarily to perform complex calculations. The name of the values must be preceded by a `#` by convention and for optimization purposes.
Mathematical constants are found in the scoreboard `dplib.const`.

Some values can be returned at a certain scale specified by the `$scale` value returned by the function.
To set the returned value to the right scale, you have to divide it by `$scale`. This allows to return floating numbers. Only some functions can return this value, so you have to be careful not to scale the result of a function to the scale of another function.

Functions can be called like this:

```
function dplib:<function domain>/<potential sub-domain>/<function name>
```
Example:
```
function dplib:math/functions/sqrt
function dplib:math/tools/random_range
```
`dplib:core/` is used internally.

This library is made to be used with [Data-pack Helper Plus](https://marketplace.visualstudio.com/items?itemName=SPGoding.datapack-language-server) extension, it is easier to find the functions thanks to the auto completion provided by the extension and a library of aliases.

```java
execute as Someone store result score $x1 dplib.in run data get entity @s Pos[0]
execute as Someone store result score $y1 dplib.in run data get entity @s Pos[1]
execute as Someone store result score $z1 dplib.in run data get entity @s Pos[2]
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $x2 dplib.in run data get entity @s Pos[0]
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $y2 dplib.in run data get entity @s Pos[1]
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $z2 dplib.in run data get entity @s Pos[2]
function dplib:core/math/tools/distance/run
title Someone actionbar [{"text":"Nearest Cow : ","color":"red"},{"score":{"name":"$out","objective":"dplib.out"},"color":"yellow"},{"text":"m","color":"yellow"}]
```
## Index
### Math
[functions/**ceil**](#functionsceil)

[functions/**comb**]()

[functions/**copysign**]()

[functions/**fabs**]()

[functions/**factorial**]()

[functions/**floor**]()

[functions/**gcd**]()

[functions/**pow**]()

[functions/**sqrt**]()

[functions/**cbrt**]()

[functions/**cos**]()

[functions/**sin**]()

[functions/**tan**]()

[tools/**distance**]()

[tools/**isclose**]()

[tools/**random_binary**]()

[tools/**random_range**]()

[tools/**random**]()

### functions/**ceil**

Returns the ceiling of `$in` scaled to `$scale`.

>Input:
>\$in = initial number
>\$scale = the scale
>Output:
>\$out = output
>Scale: \$scale

funcitons/**comb**