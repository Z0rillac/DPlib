# Datapack library
DPlib is a function library for datapack developed in mcfunction. It is designed so that you can directly include the module you want in your datapack, without worrying about performance or compatibility and without creating dependencies. It is designed for performance and simplicity, it can be used in any datapack requiring simple or complex functions while being as fast as possible.

This library is made to be used with [Data-pack Helper Plus](https://marketplace.visualstudio.com/items?itemName=SPGoding.datapack-language-server) extension, it is easier to find the functions thanks to the auto completion provided by the extension and a library of aliases.

## Introduction

The documentation refers to the game as "the server". It refers to both the Minecraft client during a local game on the game's internal server and the external cross-platform server provided by Mojang (or other loader of Minecraft)

First you need to import the module(s) you want (they work independently) into the data folder of your datapack, you then need to load it by executing this command at the beginning of your datapack load file: 
```
function dplib.<module>:load
```

You may also need to tick the module, if so add this to the beginning of your tick file:
```
function dplib.<module>:tick
```

To ensure proper uninstallation, you must include this line in the uninstallation file
```
function dplib.<module>:uninstall
```

The function parameters are in the scoreboard `dplib.<module>.in`.  
The values returned by the functions are in the scoreboard `dplib.<module>.out`.  
The name of the parameters and the returned values are always preceded by a `$`.  
You can see some informations on functions by hovering them when you call them in your code.  
You can get information about scoreholders by clicking on readmore in your scoreboard line.  
The scoreboard `dplib.temp` is used to save values temporarily to perform complex calculations.  
Global constants are found in the scoreboard `dplib.const`.  
Global enum values are found in the scoreboard `dplib.enum`.  

Some values can be returned at a certain scale specified by the `$scale` value returned by the function.  
To set the returned value to the right scale, you have to divide it by `$scale`. This allows to return floating numbers. Only some functions can return this value, so you have to be careful not to scale the result of a function to the scale of another function.  

Functions can be called like this:

```
function dplib.<module>:<potential sub-domain>/<function name>
```
Example:
```mcfunction
## This example returns the square root of a random number

# Generates a random number
function dplib.math:tools/random
# Put the random number as parameter $in
scoreboard players operation $in dplib.math.in = $out dplib.math.out
# Return the square root
function dplib.math:functions/sqrt
```


It is advisable to credit the project :
```
This datapack uses DPlib
https://github.com/Z0rillac/DPlib
```
## Documentation per module

[dplib.math](data/dplib.math/DOCS.md)  
[dplib.datetime](data/dplib.datetime/DOCS.md)  
[dplib.threading](data/dplib.threading/DOCS.md)  
[dplib.benchmark](data/dplib.benchmark/DOCS.md)  

## DPlib's functioning and global data
### Instances
DPlib is organized in different modules that can be loaded independently from each other. This avoids having to import modules that are not used or that cannot be unloaded or they will crash when the server is restarted (dplib.datetime).  
Each module contains a `module_manager` folder in the `private` folder. This folder contains functions that allow to run correctly independently from the others, and to load and unload global data from dplib correctly.  
When a module is loaded, it declares an instance of itself, which allows to count how many times it has been loaded. This is necessary to know if other installed datapacks are also using the same module, and thus it avoids uninstalling a module while another datapack is using it at the same time.
If when you uninstall a datapack using a dplib module, the module has not been uninstalled, this is NORMAL, it just means that another datapack is using the same module, and therefore it should not be uninstalled.  
The number of instances is calculated by counting how many times the load function of a module is loaded on the same gametime tick. This means that if you run the load function twice in your datapack, it will understand that there are two datapacks using the same module, and therefore if you uninstall your datapack, it will not uninstall the module.  
This also means that if you run the load function by itself, not during the reload, the module will forget the previous loads.  
Therefore, you should NOT:
- load the same module more than once in your datapack
- load a module after server reload
- worry about the module not being uninstalled if other datapacks use it
- uninstall the same module several times in your datapack
### Global data
DPlib shares code and data in common between all its modules. They are located in the `global` folder of the `module_manager` folder.
When a module is loaded, these scoreboards are created:
- dplib.main :
It contains the number of instances of each module.
- dplib.exec :
Is used to calculate things necessary for the execution of a function itself like loops and multiple conditions.
- dplib.temp :
Is used to store useful values only during the execution of a function of 0 ticks, and which are ignored afterwards.
- dplib.enum :
Is used to store enums that you can use.
- dplib.const :
Is used to store constants.  

The global data of dplib is loaded and unloaded in the same way as the modules, but it does not matter which module.
The module code itself is in the `module` folder.
All the code in the private folder is configured not to be displayed in Visual Studio Code, all the functions are directly accessible in the basic module folder and are displayed.
### External library
Some external libraries may be necessary for the operation of dplib, if so, they are located in the `library` folder in the `module_manager` folder.
They are adapted to work inside the module, and not to work twice if imported by another datapack or if the module is loaded more than once.

## License

This library is licensed under the MIT License.