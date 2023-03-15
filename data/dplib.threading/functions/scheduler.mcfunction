## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

# YOU CAN EXECUTE THIS FILE
# This file is used to launch code on a thread. It is executed
# at each tick for each thread, but you can reexecute it
# several times in the same tick for the same thread (to
# make loops and conditions for example).
# This file defines each threads
# It's up to you to fill this file while you're coding
# Please refer to docs to learn about threading in datapacks.

execute if score @s dplib.threading.thread = #main dplib.threading.enum run function mypack:main/thread_scheduler
execute if score @s dplib.threading.thread = #foo dplib.threading.enum run function mypack:foo/thread_scheduler