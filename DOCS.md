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

```mcfunction
function dplib:<function domain>/<potential sub-domain>/<function name>
```
Example:
```mcfunction
## This example returns the square root of a random number

# Generates a random number
function dplib:math/tools/random
# Put the random number as parameter $in
scoreboard players operation $out dplib.out = $in dplib.in
# Return the square root
function dplib:math/functions/sqrt
```
`dplib:core/` is used internally.

This library is made to be used with [Data-pack Helper Plus](https://marketplace.visualstudio.com/items?itemName=SPGoding.datapack-language-server) extension, it is easier to find the functions thanks to the auto completion provided by the extension and a library of aliases.

It is advisable to credit the project :
```
This datapack depends on  DPlib by Zorillac
https://github.com/Z0rillac/DPlib
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