import os, sys
import json
os.chdir(os.path.dirname(sys.argv[0]))

with open("declare_functions.json","r") as json_data: threads = json.load(json_data)

scheduler_template_0 = """#> dplib.threading:scheduler
# **YOU CAN EXECUTE THIS FILE**  
# This file allows you to run functions dynamically on a entity/thread. You can execute it several times in the same tick for the same thread from a thread (to make loops and conditions in a thread for example).  
# This file defines each thread, you must define your threads in the `declare_functions.json` file (`./data/dplib.threading/functions/declare_functions.json`) and update this file by running the code generator `generator.py` (`./data/dplib.threading/functions/generator.py`)  
# Please refer to the documentation for more information on threading.  
# ***
# **Declared function_ids:**    *({count} functions declared)*  
# *function_id = function*  """
scheduler_template_1 = """
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
"""
ids_template = """#> dplib.threading:ids
# DO NOT EXECUTE THIS FILE
# This file defines each threads
# It's up to you to fill this file while you're coding
# Please refer to docs to learn about threading in datapacks.
# ***
# @private
# @context load

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

# DO NOT EXECUTE THIS FILE
# This file defines each threads
# It's up to you to fill this file while you're coding
# Please refer to docs to learn about threading in datapacks.

scoreboard players set #none dplib.threading.function 0"""

scheduler_IMP_doc_declaration = "\n# `#{thread}` = `{function}`  "
scheduler_command = "\nexecute if score @s dplib.threading.function = #{thread} dplib.threading.function run function {function}"
ids_command = "\nscoreboard players set #{thread} dplib.threading.function {thread_id}"

scheduler_file = open("scheduler.mcfunction","w")
ids_file = open("ids.mcfunction","w")

scheduler_file.write(scheduler_template_0.format(count=len(threads)))
for thread in threads: scheduler_file.write(scheduler_IMP_doc_declaration.format(thread=thread,function=threads[thread]))
scheduler_file.write(scheduler_template_1)
ids_file.write(ids_template)
thread_id=1
for thread in threads:
    scheduler_file.write(scheduler_command.format(thread=thread,function=threads[thread]))
    ids_file.write(ids_command.format(thread=thread,thread_id=thread_id))
    thread_id+=1

scheduler_file.close()
ids_file.close()

print('{count} functions declared.'.format(count=len(threads)))
input('Press enter to exit...')