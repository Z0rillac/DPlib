import sys, os
import math
os.chdir(os.path.dirname(sys.argv[0]))

os.mkdir('bsa')

header = """#> dplib.math:private/module/functions/cos_bsa/bsa/{}_{}
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

"""

divide_command = 'execute if score #a dplib.temp matches {start}..{end} run function dplib.math:private/module/functions/cos_bsa/bsa/{start}_{end}\n'
set_command = 'execute if score #a dplib.temp matches {} run scoreboard players set $out dplib.math.out {}\n'

def divide(start, end):
    size = end - start
    mid = math.floor(size / 2)
    left = (start, start+mid)
    right = (start+mid, end)
    
    if start < 360:
        with open("bsa/{}_{}.mcfunction".format(start, end-1), "w") as file:
            file.write(header.format(start, end-1))

            if size > 2:
                file.write(divide_command.format(start=left[0], end=left[1]-1))
                if right[0] < 360: file.write(divide_command.format(start=right[0], end=right[1]-1))
            else:
                file.write(set_command.format(left[0], round(math.cos(math.radians(left[0]))*10000000) ))
                file.write(set_command.format(right[0], round(math.cos(math.radians(right[0]))*10000000) ))

    if size > 2:
        divide(*left)
        divide(*right)

divide(0,512)