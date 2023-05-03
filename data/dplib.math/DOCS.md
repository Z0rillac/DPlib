# dplib.math
dplib.math is a module for running mathematical functions and tools. It gives you access to simple trigonometry, RNG, simple logarithmic functions, and other various functions.  
This module gives access to functions as defined in the standars of the math module of Python, limited to integer or scaled values, and other variants of some functions, more optimized for Minecraft.  
Approximation algorithms in some functions can be used, which does not guarantee absolute perfect results, but considering the rusticity of the mcfunction, the accuracy is sufficient.  
The functions do not check for errors for performance reasons. For example, `sqrt(-1)` will not return any errors.  

## Setup
At the beginning of your load (or init/reset) file:
```mcfunction
function dplib.math:load
```
In your uninstall file:
```mcfunction
function dplib.math:uninstall
```

## Index
### Functions
[dplib.math:functions/**ceil**](#dplibmathfunctionsceil)

[dplib.math:functions/**clamp**](#dplibmathfunctionsclamp)

[dplib.math:functions/**comb**](#dplibmathfunctionscomb)

[dplib.math:functions/**copysign**](#dplibmathfunctionscopysign)

[dplib.math:functions/**fabs**](#dplibmathfunctionsfabs)

[dplib.math:functions/**factorial**](#dplibmathfunctionsfactorial)

[dplib.math:functions/**floor**](#dplibmathfunctionsfloor)

[dplib.math:functions/**round**](#dplibmathfunctionsround)

[dplib.math:functions/**gcd**](#dplibmathfunctionsgcd)

[dplib.math:functions/**lcm**](#dplibmathfunctionslcm)

[dplib.math:functions/**pow**](#dplibmathfunctionspow)

[dplib.math:functions/**sqrt**](#dplibmathfunctionssqrt)

[dplib.math:functions/**cbrt**](#dplibmathfunctionscbrt)

[dplib.math:functions/**cos**](#dplibmathfunctionscos)

[dplib.math:functions/**cos_bsa**](#dplibmathfunctionscos_bsa)

[dplib.math:functions/**sin**](#dplibmathfunctionssin)

[dplib.math:functions/**sin_bsa**](#dplibmathfunctionssin_bsa)

[dplib.math:functions/**tan_bsa**](#dplibmathfunctionstan_bsa)

[dplib.math:tools/**distance**](#dplibmathtoolsdistance)

[dplib.math:tools/**isclose**](#dplibmathtoolsisclose)

[dplib.math:tools/**random_binary**](#dplibmathtoolsrandom_binary)

[dplib.math:tools/**random_range**](#dplibmathtoolsrandom_range)

[dplib.math:tools/**random**](#dplibmathtoolsrandom)

[dplib.math:tools/**random_binary_lcg**](#dplibmathtoolsrandom_binary_lcg)

[dplib.math:tools/**random_range_lcg**](#dplibmathtoolsrandom_range_lcg)

[dplib.math:tools/**random_lcg**](#dplibmathtoolsrandom_lcg)

### Predicates
[dplib.math:**random_binary**](#dplibmathrandom_binary)

## Functions
### dplib.math:functions/**ceil**
Returns the ceiling of `$in` scaled to `$scale`.

Parameters -> score `dplib.math.in` :  
- `$in` : input value  
- `$scale` : the scale  

Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
scoreboard players set $scale dplib.math.in 100
function dplib.math:functions/ceil
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**clamp**
Returns `$in` clamped to the inclusive range of `$min` and `$max`.

Parameters -> score `dplib.math.in` :  
- `$in` : input value  
- `$min` : minimum value  
- `$max` : maximum value  

Output -> score `dplib.math.out` :  
- `$out` : output value

Example code :  
```mcfunction
scoreboard players set $min dplib.math.in 0
scoreboard players set $max dplib.math.in 64
scoreboard players operation $in dplib.math.in = foo mypack.bar
function dplib.math:functions/clamp
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**comb**
Returns the number of ways to choose `$in2` items from `$in1` items without repetition and without order.

Parameters -> score `dplib.math.in` :  
- `$in1` : number of total items  
- `$in2` : number of items to choose  

Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in1 dplib.math.in = @e[tag=game.session] game.session.team_size
scoreboard players operation $in2 dplib.math.in = @e[tag=game.session] game.session.players
function dplib.math:functions/comb
scoreboard players operation @e[tag=game.session] game.session.frequency = $out dplib.math.out
```

***

### dplib.math:functions/**copysign**
Returns the magnitude (absolute value) of `$in1` but the sign of `$in2`.

Parameters -> score `dplib.math.in` :  
- `$in1` : input number  
- `$in2` : sign source  

Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in1 dplib.math.in = quux mypack.bar
scoreboard players operation $in2 dplib.math.in = foo mypack.bar
function dplib.math:functions/copysign
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**fabs**
Returns the absolute value of `$in`.

Parameters -> score `dplib.math.in` :  
- `$in` : input value  

Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
function dplib.math:functions/fabs
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**factorial**
Returns `$in` factorial.  

Parameters -> score `dplib.math.in` :  
- `$in` : input value  
Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
function dplib.math:functions/factorial
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**floor**
Returns the floor of `$in` scaled to `$scale`.

Parameters -> score `dplib.math.in` :  
- `$in` : input value  
- `$scale` : the scale  

Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
scoreboard players set $scale dplib.math.in 100
function dplib.math:functions/floor
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**round**
Returns `$in` scaled to `$scale` rounded to an integer value.

Parameters -> score `dplib.math.in` :  
- `$in` : input value  
- `$scale` : the scale  

Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
scoreboard players set $scale dplib.math.in 100
function dplib.math:functions/round
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**gcd**
Returns the greatest common divisor of `$in1` and `$in2`.

Parameters -> score `dplib.math.in` :  
- `$in1` : value 1  
- `$in2` : value 2  

Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in1 dplib.math.in = quux mypack.bar
scoreboard players operation $in2 dplib.math.in = foo mypack.bar
function dplib.math:functions/gcd
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**lcm**
Returns the least common multiple of `$in1` and `$in2`.  

Parameters -> score `dplib.math.in` :  
- `$in1` : value 1  
- `$in2` : value 2  

Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in1 dplib.math.in = quux mypack.bar
scoreboard players operation $in2 dplib.math.in = foo mypack.bar
function dplib.math:functions/lcm
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**pow**
Returns `$in1` raised to the power `$in2`.  

Parameters -> score `dplib.math.in` :  
- `$in1` : input value  
- `$in2` : exponent  

Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in1 dplib.math.in = quux mypack.bar
scoreboard players operation $in2 dplib.math.in = foo mypack.bar
function dplib.math:functions/pow
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**sqrt**
Returns the square root of `$in`.  

Parameters -> score `dplib.math.in` :  
- `$in` : input value  

Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
function dplib.math:functions/sqrt
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**cbrt**
Returns the cube root of `$in`.  

Parameters -> score `dplib.math.in` :  
- `$in` : input value  

Output -> score `dplib.math.out` :  
- `$out` : output value  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
function dplib.math:functions/cbrt
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**cos**
Returns an approximation of the cosine of `$in` degrees and this approximation scaled by `scale`, avoiding integer overflow for any value. If `$scale` is `0`, the calculation process will be ignored making the function faster. Can be defined like this: `cos($in)*$scale`  
 
Parameters -> score `dplib.math.in` :  
- `$in` : angle in degrees  
- `$scale` : scale  

Output -> score `dplib.math.out` :  
- `$out` : cosine  
- `$scaled` : the scaled cosine  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
scoreboard players operation $scale dplib.math.in = quux mypack.bar
function dplib.math:functions/cos
scoreboard players operation baz mypack.bar = $out dplib.math.out
scoreboard players operation quuy mypack.bar = $scaled dplib.math.out
```

***

### dplib.math:functions/**cos_bsa**
Returns the exact value of the cosine of `$in` degrees, scaled to `10000000` using a binary search algorithm. This method is much more accurate for Minecraft but also takes a little more time. It is recommended to use it more in case you do a big calculation using a single cosine.`

Parameters -> score `dplib.math.in` :  
- `$in` : angle in degrees  

Output -> score `dplib.math.out` :  
- `$out` : cosine  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
function dplib.math:functions/cos_bsa
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**sin**
Returns an approximation of the sine of `$in` degrees and this approximation scaled by `scale`, avoiding integer overflow for any value. If `$scale` is `0`, the calculation process will be ignored making the function faster. Can be defined like this: `sin($in)*$scale`  

Parameters -> score `dplib.math.in` :  
- `$in` : angle in degrees  
- `$scale` : scale  

Output -> score `dplib.math.out` :  
- `$out` : sine  
- `$scaled` : the scaled cosine  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
scoreboard players operation $scale dplib.math.in = quux mypack.bar
function dplib.math:functions/sin
scoreboard players operation baz mypack.bar = $out dplib.math.out
scoreboard players operation quuy mypack.bar = $scaled dplib.math.out
```

***

### dplib.math:functions/**sin_bsa**
Returns the exact value of the sine of `$in` degrees, scaled to `10000000` using a binary search algorithm. This method is much more accurate for Minecraft but also takes a little more time. It is recommended to use it more in case you do a big calculation using a single sine.

Parameters -> score `dplib.math.in` :  
- `$in` : angle in degrees  

Output -> score `dplib.math.out` :  
- `$out` : sine  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
function dplib.math:functions/sin_bsa
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:functions/**tan_bsa**
Returns the tangent of `$in` degrees scaled to `10000000` using a binary search algorithm.  

Parameters -> score `dplib.math.in` :  
- `$in` : angle in degrees  

Output -> score `dplib.math.out` :  
- `$out` : tangent  

Example code :  
```mcfunction
scoreboard players operation $in dplib.math.in = foo mypack.bar
function dplib.math:functions/tan_bsa
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:tools/**distance**
Returns the 3D distance between two point.  

Parameters -> score `dplib.math.in` :  
- `$x1` : X position of the first point  
- `$y1` : Y position of the first point  
- `$z1` : Z position of the first point  
- `$x2` : X position of the second point  
- `$y2` : Y position of the second point  
- `$z2` : Z position of the second point  

Output -> score `dplib.math.out` :  
- `$out` : the distance  

Example code :  
```mcfunction
# Puts the player's coordinates in parameters of the function
execute as Someone store result score $x1 dplib.math.in run data get entity @s Pos[0]
execute as Someone store result score $y1 dplib.math.in run data get entity @s Pos[1]
execute as Someone store result score $z1 dplib.math.in run data get entity @s Pos[2]
# Puts the nearest cow coordinates in parameters of the function
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $x2 dplib.math.in run data get entity @s Pos[0]
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $y2 dplib.math.in run data get entity @s Pos[1]
execute at Someone as @e[sort=nearest,type=cow,limit=1] store result score $z2 dplib.math.in run data get entity @s Pos[2]
# Calculates the distance
function dplib.math:tools/distance
```

***

### dplib.math:tools/**isclose**
Returns `1` if the values `$in1` and `$in2` are close to each other and `0` otherwise.  
Whether or not two values are considered close is determined according to given tolerance `$max`.  

Parameters -> score `dplib.math.in` :  
- `$in1` : input value 1  
- `$in2` : input value 2  
- `$max` : tolerance  

Output -> score `dplib.math.out` :  
- `$out` : output (boolean)  

Example code :  
```mcfunction
scoreboard players operation $in1 dplib.math.in = quux mypack.bar
scoreboard players operation $in2 dplib.math.in = foo mypack.bar
scoreboard players set $max dplib.math.in 5
function dplib.math:tools/isclose
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:tools/**random_binary**
Returns `1` or `0` randomly.  
Can be replaced by :  
```mcfunction
execute if predicate dplib.math:random_binary run ...
```

Output -> score `dplib.math.out` :  
- `$out` : output (boolean)  

Example code :  
```mcfunction
function dplib.math:tools/random_binary
execute if score $out dplib.math.out = #true dplib.enum run function mypack:foo
# OR (better)
execute if predicate dplib.math:random_binary run function mypack:foo
```

***

### dplib.math:tools/**random_range**
Returns a random number between `$min` and `$max`.  

Parameters -> score `dplib.math.in` :  
- `$min` : minimum  
- `$max` : maximum (not including)  

Output -> score `dplib.math.out` :  
- `$out` : output    

Example code :  
```mcfunction
scoreboard players set $min dplib.math.in 0
scoreboard players set $max dplib.math.in 64
function dplib.math:tools/random_range
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:tools/**random**
Returns a random number between `-2147483648` and `2147483647`.

Output -> score `dplib.math.out` :  
- `$out` : output  

Example code :  
```mcfunction
function dplib.math:tools/random
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:tools/**random_binary_lcg**
Returns `1` or `0` randomly using the Linear Congruential Generator Algorithm.  

Output -> score `dplib.math.out` :  
- `$out` : output (boolean)  

Example code :  
```mcfunction
function dplib.math:tools/random_binary_lcg
execute if score $out dplib.math.out = #true dplib.enum run function mypack:foo
```

***

### dplib.math:tools/**random_range_lcg**
Returns a random number between `$min` and `$max` using the Linear Congruential Generator Algorithm.  

Parameters -> score `dplib.math.in` :  
- `$min` : minimum  
- `$max` : maximum (not including)  

Output -> score `dplib.math.out` :  
- `$out` : output  

Example code :  
```mcfunction
scoreboard players set $min dplib.math.in 0
scoreboard players set $max dplib.math.in 64
function dplib.math:tools/random_range_lcg
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

***

### dplib.math:tools/**random_lcg**
Returns a random number between `-2147483648` and `-2147483647` using the Linear Congruential Generator Algorithm.  

Output -> score `dplib.math.out` :  
- `$out` : output  

Example code :  
```mcfunction
function dplib.math:tools/random_lcg
scoreboard players operation baz mypack.bar = $out dplib.math.out
```

## Predicates
### dplib.math:**random_binary**
Has one in two chance of returning `true`.  

```mcfunction
execute if predicate dplib:random_binary run ...
```

***