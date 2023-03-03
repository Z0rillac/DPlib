# Datapack library
This is a function library for datapack developed in mcfunction. It gives you access to mathematical functions and tools, code threading, and scoreboard ID (SID). It is designed to be directly included in the data file of your datapack or to be used as a dependency of your datapack. It is designed for performance and simplicity, it can be used in any datapack requiring simple or complex functions while being as fast as possible.
## How it works
The function parameters must be in the scoreboard `dplib.in`.
The values returned by the functions are in the scoreboard `dplib.out`.
The name of the parameters and the returned values are always preceded by a `$`.
The scoreboard `dplib.temp` is and can be used to save values temporarily to perform complex calculations. The name of the values must be preceded by a `#` by convention and for optimization purposes.
Mathematical constants are found in the scoreboard `dplib.const`.

Some values can be returned at a certain scale specified by the `$scale` value returned by the function.
To set the returned value to the right scale, you have to divide it by `$scale`. This allows to return floating numbers. Only some functions can return this value, so you have to be careful not to scale the result of a function to the scale of another function.

Functions can be called like this:

```mcfunction
function dplib:<function domain>/<potential sub-domain>/<function name>
```
Example:
```mcfunction
## This example returns the square root of a random number

# Generates a random number
function dplib:math/tools/random
# Put the random number as parameter $in
scoreboard players operation $in dplib.in = $out dplib.out
# Return the square root
function dplib:math/functions/sqrt
```
`dplib:private/` is used internally.

This library is made to be used with [Data-pack Helper Plus](https://marketplace.visualstudio.com/items?itemName=SPGoding.datapack-language-server) extension, it is easier to find the functions thanks to the auto completion provided by the extension and a library of aliases.

It is advisable to credit the project :
```
This datapack uses DPlib by Zorillac
https://github.com/Z0rillac/DPlib
```

## Index
### Math
[math/functions/**ceil**](#mathfunctionsceil)

[math/functions/**comb**](#mathfunctionscomb)

[math/functions/**copysign**](#mathfunctionscopysign)

[math/functions/**fabs**](#mathfunctionsfabs)

[math/functions/**factorial**](#mathfunctionsfactorial)

[math/functions/**floor**](#mathfunctionsfloor)

[math/functions/**gcd**](#mathfunctionsgcd)

[math/functions/**pow**](#mathfunctionspow)

[math/functions/**sqrt**](#mathfunctionssqrt)

[math/functions/**cbrt**](#mathfunctionscbrt)

[math/functions/**cos**](#mathfunctionscos)

[math/functions/**sin**](#mathfunctionssin)

[math/functions/**tan**](#mathfunctionstan)

[math/tools/**distance**](#mathtoolsdistance)

[math/tools/**isclose**](#mathtoolsisclose)

[math/tools/**random_binary**](#mathtoolsrandom_binary)

[math/tools/**random_range**](#mathtoolsrandom_range)

[math/tools/**random**](#mathtoolsrandom)

### Thread

[thread/**new**](#threadnew)

[thread/**kill**](#threadkill)

### Scoreboard ID (SID)

[(predicate) sid/**linked_to_head**](#sidlinked_to_head)

[(predicate) sid/**linked_to_limbs**](#sidlinked_to_limbs)

### math/functions/ceil
Returns the ceiling of `$in` scaled to `$scale`.
```
Input:
    $in = initial number
    $scale = the scale
Output:
    $out = output
Scale: $scale
```

### math/functions/comb
Returns the number of ways to choose `$in2` items from `$in1` items without repetition and without order.
```
Input:
    $in1 = number of total items
    $in2 = number of items to choose
Output:
    $out = output
Scale: 1
```

### math/functions/copysign
Returns the magnitude (absolute value) of `$number` but the sign of `$source`.
```
Input:
    $number = initial number
    $source = sign source
Output:
    $out = output
Scale: 1
```

### math/functions/fabs
Returns the absolute value of `$in`.
```
Input:
    $in = initial number
Output:
    $out = output
Scale: 1
```

### math/functions/factorial
Returns `$in` factorial.
```
Input:
    $in = initial number
Output:
    $out = output
Scale: 1
```

### math/functions/floor
Returns the floor `$in` scaled to `$scale`.
```
Input:
    $in = initial number
    $scale = the scale
Output:
    $out = output
Scale: $scale
```

### math/functions/gcd
Returns the greatest common divisor of the `$in1` and `$in2`.
```
Input:
    $in1 = number 1
    $in2 = number 2
Output:
    $out = output
Scale: 1
```

### math/functions/pow
Returns `$number` raised to the power `$exponent`.
```
Input:
    $exponent = exponent
    $number = initial number
Output:
    $out = output
Scale: 1
```

### math/functions/sqrt
Returns the square root of `$in`.
```
Input:
    $in = initial number
Output:
    $out = output
Scale: 1
```

### math/functions/cbrt
Returns the cube root of `$in`.
```
Input:
    $in = initial number
Output:
    $out = output
Scale: 1
```

### math/functions/cos
Returns the cosinus of `$in` degrees.
```
Input:
    $in = initial number
Output:
    $out = output
    $scale = the scale of $out
Scale: 1000000000
```

### math/functions/sin
Returns the sinus of `$in` degrees.
```
Input:
    $in = initial number
Output:
    $out = output
    $scale = the scale of $out
Scale: 1000000000
```

### math/functions/tan
Returns the tangent of `$in` degrees.
```
Input:
    $in = initial number
Output:
    $out = output
    $scale = the scale of $out
Scale: 10000000
```

### math/tools/distance
Returns the 3D distance between two point.
```
Input:
    $x1 = X position of the first point
    $y1 = Y position of the first point 
    $z1 = Z position of the first point
    $x2 = X position of the second point
    $y2 = Y position of the second point
    $z2 = Z position of the second point
Output:
    $out = the distance
Scale: 1
```

### math/tools/isclose
Returns `1` if the values `$in1` and `$in2` are close to each other and 0 otherwise.
Whether or not two values are considered close is determined according to given tolerance.
```
Input:
    $in1 = number 1
    $in2 = number 2
    $max = tolerence
Output:
    $out = output (boolean)
```

### math/tools/random_binary
Returns `1` or `0` randomly.
Can be replaced by :
```mcfunction
execute if predicate dplib:random_binary run ...
```
```
Input:
Output:
    $out = output (boolean)
Scale: 1
```

### math/tools/random_range
Returns a random number between `$min` and `$max`.
```
Input:
    $min = minimum
    $max = maximum (not including)
Output:
    $out = output
Scale: 1
```

### math/tools/random
Returns a random number between `-2147483648` and `2147483647`
```
Input:
Output:
    $out = output
Scale: 1
```

### thread/new
Creates a new thread.
```

```

### thread/kill
Kills the current used thread.
```

```

### sid/linked_to_limbs
Predicate to select all limbs of the "head" entity
```mcfunction
# Sets the target SID to the one of the nearest ship
scoreboard players operation search dplib.sid = @e[tag=ship,sort=nearest,limit=1] dplib.sid.head
# Fire all the guns of the ship (being linked as a member) by using the predicate dplib:sid/linked_to_limbs
execute as @e[tag=guns,predicate=dplib:sid/linked_to_limbs] at @s run function mypack:ship/guns/fire
```

### sid/linked_to_head
Predicate to select the "head" entity from one of his limbs.
```mcfunction
# Sets the target SID to the head of the current limbs (the seat of the ship)
scoreboard players operation search dplib.sid = @s[tag=seat] dplib.sid.limbs
# Execute the function mypack:ship/rotate from the ship using the predicate dplib:sid/linked_to_head
execute as @e[tag=ship,predicate=dplib:sid/linked_to_head] at @s run function mypack:ship/rotate
```