# dplib.benchmark
dplib.benchmark is a small module to test the speed of execution of your functions. It will run your functions in a loop for 10 seconds on the same tick, and calculate how many times it could run it, how many times per tick it could run, and how long in milliseconds it takes to run it.  
This module is not made to be directly integrated in a datapack because it does not add anything to develop your datapack. This module is only a tool to test the speed during the development of your datapack. It is recommended to remove it after the development of your datapack (except if your datapack must provide a benchmarking function...)  

You must write your code or function in `dplib.benchmark:benchmark`, then run a test with `function #dplib.benchmark:start` in the game.

## Warning
Since Minecraft 1.18.2, when you run a test, the world border changes and is reset to its default value. This is unavoidable to measure time accurately.  
[Vote here](https://bugs.mojang.com/browse/MC-246429) to fix this bug.  
When you run a test, the scoreboard in the sidebar is hidden because it can slow down the server.  

## Setup
At the beginning of your load (or init/reset) file:
```mcfunction
function dplib.benchmark:load
```
In your uninstall file:
```mcfunction
function dplib.benchmark:uninstall
```

## Index
### Functions
[#dplib.benchmark:**start**](DOCS.md#dplibbenchmarkstart)

## Functions
### #dplib.benchmark:**start**
Starts a benchmark of your code set in `dplib.benchmark:benchmark`. Run this in the game.

***