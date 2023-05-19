# dplib.threading
The dplib.threading module is a module that allows you to precisely control how things are executed.  
This module considers each entity as a thread (which is technically the case), even though the commands executed on the threads are not executed dynamically and not at the same time.  

## Setup
At the beginning of your load (or init/reset) file:
```mcfunction
function dplib.threading:load
```
In your uninstall file:
```mcfunction
function dplib.threading:uninstall
```

## Index
### Functions

[dplib.threading:**scheduler**](DOCS.md#dplibthreadingscheduler)

[dplib.threading:thread/**new**](DOCS.md#dplibthreadingthreadnew)

[dplib.threading:thread/**kill**](DOCS.md#dplibthreadingthreadkill)

[dplib.threading:hierarchy/**set_child_of**](DOCS.md#dplibthreadinghierarchyset_child_of)

[dplib.threading:hierarchy/**set_parent_of**](DOCS.md#dplibthreadinghierarchyset_parent_of)

### Predicates

[dplib.threading:**child**](DOCS.md#dplibthreadingchild)

[dplib.threading:**parent**](DOCS.md#dplibthreadingparent)

## Functions
### dplib.threading:**scheduler**
This function executes the function associated in `@s dplib.threading.function` of the entity that executes it. This allows to run dynamically, to extend functions over several ticks and to optimize and shorten the code in complex circumstances.
This function checks for each value of `@s dplib.threading.function` if it should execute the function, so you have to add the functions you want to be able to execute dynamically.  

You can add your functions in two ways:  
All the following manipulations are to be done directly in the `dplib.threading` folder. (`/data/dplib.threading/functions/`)  
1. Automatically (simple) [Requires Python](https://www.python.org/)  
    Simply add your function to the `declare_functions.json` file following the logic of the previous functions and run `generator.py`. The functions will be added automatically.
    ```json
    {
    "main":"mypack:main/thread_scheduler",
    "foo":"mypack:foo/thread_scheduler",
    "bar":"mypack:bar/thread_scheduler",
    "baz":"mypack:baz/thread_scheduler",
    "<function_id>":"<your_function>"
    }
    ```
    `function_id` is the identifier of the function. You would assign this value in the `dplib.threading.function` score to the entity on which you would run dplib.threading:scheduler to dynamically execute this function.  
    `your_function` is the function you want to run.  

2. Manually (complex)
    In `dplib.threading:scheduler`, add, following the logic of the previous lines for example, a line like this:
    ```mcfunction
    execute if score @s dplib.threading.function = #<function_id> dplib.threading.function run function <your_function>
    ```
    In `dplib.threading:scheduler`, add, following the logic of the previous lines for example, a line like this:
    ```mcfunction
    scoreboard players set #<function_id> dplib.threading.function <number>
    ```
    `function_id` is the identifier of the function. You would assign this value in the `dplib.threading.function` score to the entity on which you would run dplib.threading:scheduler to dynamically execute this function.  
    `your_function` is the function you want to run.  
    `number` is a number necessarily different from all others in the file `dplib.threading:ids`. It cannot be 0. The most common way to choose it is to take the number from the previous function and add 1. If you respect these rules, whatever number you choose the datapack will work fine. This number is just to differentiate the functions between them.  

Please do not delete `#none`. This value does not correspond to any function, which can be useful.  

Example code :  
```mcfunction
scoreboard players operation @s dplib.threading.function = #foo dplib.threading.function
function dplib.threading:scheduler
```

***

### dplib.threading:thread/**new**
Creates a new thread with a defined context.
When it is created, the thread is automatically considered as a child of the entity that created it.  
By default, the new thread has the tag `dplib.threading.thread.new`, allowing you more customization on the newly created thread. You must remove this tag after running this,  disfunctions may occur.  

Parameters -> score `dplib.threading.in` :  
- `$at` : specifies how the context is defined  
  - `#threading.here dplib.enum` : where this is executed
  - `#threading.xyz dplib.enum` : position coordinates  
    - `$x` : x position  
    - `$y` : y position  
    - `$z` : z position  
  - `#threading.xyzxy dplib.enum` : position and rotation coordinates  
    - `$x` : x position  
    - `$y` : y position  
    - `$z` : z position  
    - `$ry` : y rotation  
    - `$rz` : z rotation  
  - `#threading.herexy dplib.enum` : rotation coordinates  
    - `$ry` : y rotation  
    - `$rz` : z rotation  
  - `#threading.xyz64 dplib.enum` : position coordinates scaled to 64  
    - `$x` : x position  
    - `$y` : y position  
    - `$z` : z position  
  - `#threading.xyzxy64 dplib.enum` : position and rotation coordinates scaled to 64  
    - `$x` : x position  
    - `$y` : y position  
    - `$z` : z position  
    - `$ry` : y rotation  
    - `$rz` : z rotation  
  - `#threading.herexy64 dplib.enum` : rotation coordinates scaled to 64  
    - `$ry` : y rotation  
    - `$rz` : z rotation  
- `$function` : specifies the function that the thread executes  

Example code :  
```mcfunction
scoreboard players operation $at dplib.threading.in = #threading.xyz dplib.enum
scoreboard players set $x dplib.threading.in -1
scoreboard players set $y dplib.threading.in -60
scoreboard players set $z dplib.threading.in -14
scoreboard players operation $function dplib.threading.in = #mypack.foo dplib.threading.function.enum 
function dplib.threading:thread/new
tag @e[tag=dplib.threading.thread.new] add mypack.foo
tag @e[tag=dplib.threading.thread.new] remove dplib.threading.thread.new
```

***

### dplib.threading:thread/**kill**
Kills the current threads and/or childs of this thread.  

Parameters -> score `dplib.threading.in` :  
- `$childs` : selects the entire hierarchy from this thread. Defaults to true.  
  - `#true dplib.enum` : true  
  - `#false dplib.enum` : false  
- `$this` : selects this thread. Defaults to true.    
  - `#true dplib.enum` : true  
  - `#false dplib.enum` : false  

Example code :  
```mcfunction
scoreboard players operation target dplib.threading.main = @s dplib.threading.parent
execute as @e[predicate=dplib.threading:child] run function dplib.threading:thread/kill
```

***

### dplib.threading:hierarchy/**set_child_of**
Defines the entity/thread executing this as a child of the entity/thread with the `dplib.threading.target` tag.
The tag is automatically removed.  

Example code :  
```mcfunction
tag @e[tag=ship.seat] add dplib.threading.target
function dplib.threading:hierarchy/set_child_of
```

***

### dplib.threading:hierarchy/**set_parent_of**
Defines the entity/thread executing this as the parent of the entity/thread with the `dplib.threading.target` tag.
The tag is automatically removed.  

Example code :  
```mcfunction
tag @e[tag=ship] add dplib.threading.target
function dplib.threading:hierarchy/set_parent_of
```

***

## Predicates
### dplib.threading:**child**
Predicate to select an entity/thread if it is a child of the entity/thread executing this.  

```mcfunction
# Sets the target to one of the nearest ship
scoreboard players operation target dplib.threading.main = @e[tag=ship,sort=nearest,limit=1] dplib.threading.parent
# Fire all the guns of the ship (being linked as a child) by using the predicate dplib.threading:child
execute as @e[tag=guns,predicate=dplib.threading:child] at @s run function mypack:ship/guns/fire
```

***

### dplib.threading:**parent**
Predicate to select the parent entity/thread from one of his childs.  

```mcfunction
# Sets the target to the parent of the current child (the seat of the ship)
scoreboard players operation target dplib.threading.main = @s[tag=seat] dplib.threading.child
# Execute the function mypack:ship/rotate from the ship using the predicate dplib.threading:parent
execute as @e[tag=ship,predicate=dplib.threading:parent] at @s run function mypack:ship/rotate
```

***