#> dplib.math:private/module/dhp-declarations
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

#>
# Has one in two chance of returning `true`.
# ```mcfunction
# execute if predicate dplib:random_binary run ...
# ```
# @public
# @context any
#declare predicate dplib.math:random_binary

#> Output scale in dplib.math.out  
# The value by which the constants are multiplied.  
# Divide the constants by `constant_scale` to get the true value.  
# Allows to return floats.  
#declare score_holder constant_scale

#> Constant value in dplib.const  
# &pi; = `3.14159265`
#declare score_holder pi

#> Constant value in dplib.const  
# &tau; = `6.28318530`
#declare score_holder tau

#> Constant value in dplib.const  
# e = `2.71828182`
#declare score_holder e

#> Main input score in dplib.math.in  
#
# Required for :  
# `dplib.math:functions/ceil`  
# `dplib.math:functions/clamp`  
# `dplib.math:functions/fabs`  
# `dplib.math:functions/factorial`  
# `dplib.math:functions/floor`  
# `dplib.math:functions/round`  
# `dplib.math:functions/sqrt`  
# `dplib.math:functions/cbrt`  
# `dplib.math:functions/cos`  
# `dplib.math:functions/sin`  
# `dplib.math:functions/tan`  
#declare score_holder $in

#> Input score 1 in dplib.math.in
#
# Required for :  
# `dplib.math:functions/comb`  
# `dplib.math:functions/gcd`  
# `dplib.math:functions/lcm`  
# `dplib.math:functions/pow`  
# `dplib.math:functions/copysign`  
# `dplib.math:tools/isclose`  
#declare score_holder $in1

#> Input score 2 in dplib.math.in
#
# Required for :  
# `dplib.math:functions/comb`  
# `dplib.math:functions/gcd`  
# `dplib.math:functions/lcm`  
# `dplib.math:functions/pow`  
# `dplib.math:functions/copysign`  
# `dplib.math:tools/isclose`  
#declare score_holder $in2

#> Main output score in dplib.math.out
#declare score_holder $out

#> Input score minimum in dplib.math.in
#
# Required for :  
# `dplib.math:functions/clamp`  
# `dplib.math:tools/random_range`  
#declare score_holder $min

#> Input score maximum in dplib.math.in
#
# Required for :  
# `dplib.math:functions/clamp`  
# `dplib.math:tools/random_range`  
#declare score_holder $max

#> Output scale in dplib.math.out  
# The value by which `$out` is multiplied.  
# Divide `$out` by `$scale` to get the true value.  
# Allows to return floats.  
#declare score_holder $scale

#> Input score x1 in dplib.math.in  
# Required for :  
# `dplib.math:tools/distance`  
#declare score_holder $x1

#> Input score y1 in dplib.math.in  
# Required for :  
# `dplib.math:tools/distance`  
#declare score_holder $y1

#> Input score z1 in dplib.math.in  
# Required for :  
# `dplib.math:tools/distance`  
#declare score_holder $z1

#> Input score x2 in dplib.math.in  
# Required for :  
# `dplib.math:tools/distance`  
#declare score_holder $x2

#> Input score y2 in dplib.math.in  
# Required for :  
# `dplib.math:tools/distance`  
#declare score_holder $y2

#> Input score z2 in dplib.math.in  
# Required for :  
# `dplib.math:tools/distance`  
#declare score_holder $z2