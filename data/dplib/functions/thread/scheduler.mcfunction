## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

# DO NOT EXECUTE THIS FILE
# This file defines each threads
# It's up to you to fill this file while you're coding
# Please refer to docs to learn about threading in datapacks.

execute if score @s dplib.thread.threads = #main dplib.thread.id run function mypack:main/thread_scheduler
execute if score @s dplib.thread.threads = #foo dplib.thread.id run function mypack:foo/thread_scheduler