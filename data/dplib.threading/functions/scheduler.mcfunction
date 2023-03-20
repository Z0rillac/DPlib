#> dplib.threading:scheduler
# **YOU CAN EXECUTE THIS FILE**  
# This file allows you to run functions dynamically on a entity/thread. You can execute it several times in the same tick for the same thread from a thread (to make loops and conditions in a thread for example).  
# This file defines each thread, you must define your threads in the `declare_functions.json` file (`./data/dplib.threading/functions/declare_functions.json`) and update this file by running the code generator `generator.py` (`./data/dplib.threading/functions/generator.py`)  
# Please refer to the documentation for more information on threading.  
# ***
# **Declared function_ids:**    *(4 functions declared)*  
# *function_id = function*  
# `#main` = `mypack:main/thread_scheduler`  
# `#foo` = `mypack:foo/thread_scheduler`  
# `#bar` = `mypack:bar/thread_scheduler`  
# `#baz` = `mypack:baz/thread_scheduler`  
# ***
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

# YOU CAN EXECUTE THIS FILE  
# This file allows you to run functions dynamically on a entity/thread.  
# You can execute it several times in the same tick for the same thread  
# from a thread.(to make loops and conditions for example).  
# This file defines each thread, you must define your threads in the  
# "declare_threads.json" file  
# (./data/dplib.threading/functions/declare_functions.json) and update  
# this file by running the code generator "generator.py"  
# (./data/dplib.threading/functions/generator.py)  

execute if score @s dplib.threading.function = #main dplib.threading.function run function mypack:main/thread_scheduler
execute if score @s dplib.threading.function = #foo dplib.threading.function run function mypack:foo/thread_scheduler
execute if score @s dplib.threading.function = #bar dplib.threading.function run function mypack:bar/thread_scheduler
execute if score @s dplib.threading.function = #baz dplib.threading.function run function mypack:baz/thread_scheduler