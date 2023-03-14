#> dplib.datetime:private/module/load
# @within dplib.datetime:private/load
# @private

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

execute in dplib.datetime:void run forceload add 0 0
execute in dplib.datetime:void run setblock 0 0 0 minecraft:repeating_command_block{Command:"Baby blue buildings far above the crystal grove Magenta plated terrace with a table and a stove Guarded golden railing just to frame the pretty stars Fix that old piano and the birds will fall apart",TrackOutput:1b,auto:1b,conditionMet:1b}

scoreboard objectives add dplib.datetime.main dummy
data merge storage dplib.datetime:time {root:{}}
data remove storage dplib.datetime:time root.get_unix.base64
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"A","byte":[B;0b,0b,0b,0b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"B","byte":[B;0b,0b,0b,0b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"C","byte":[B;0b,0b,0b,0b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"D","byte":[B;0b,0b,0b,0b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"E","byte":[B;0b,0b,0b,1b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"F","byte":[B;0b,0b,0b,1b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"G","byte":[B;0b,0b,0b,1b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"H","byte":[B;0b,0b,0b,1b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"I","byte":[B;0b,0b,1b,0b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"J","byte":[B;0b,0b,1b,0b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"K","byte":[B;0b,0b,1b,0b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"L","byte":[B;0b,0b,1b,0b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"M","byte":[B;0b,0b,1b,1b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"N","byte":[B;0b,0b,1b,1b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"O","byte":[B;0b,0b,1b,1b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"P","byte":[B;0b,0b,1b,1b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"Q","byte":[B;0b,1b,0b,0b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"R","byte":[B;0b,1b,0b,0b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"S","byte":[B;0b,1b,0b,0b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"T","byte":[B;0b,1b,0b,0b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"U","byte":[B;0b,1b,0b,1b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"V","byte":[B;0b,1b,0b,1b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"W","byte":[B;0b,1b,0b,1b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"X","byte":[B;0b,1b,0b,1b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"Y","byte":[B;0b,1b,1b,0b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"Z","byte":[B;0b,1b,1b,0b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"a","byte":[B;0b,1b,1b,0b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"b","byte":[B;0b,1b,1b,0b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"c","byte":[B;0b,1b,1b,1b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"d","byte":[B;0b,1b,1b,1b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"e","byte":[B;0b,1b,1b,1b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"f","byte":[B;0b,1b,1b,1b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"g","byte":[B;1b,0b,0b,0b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"h","byte":[B;1b,0b,0b,0b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"i","byte":[B;1b,0b,0b,0b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"j","byte":[B;1b,0b,0b,0b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"k","byte":[B;1b,0b,0b,1b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"l","byte":[B;1b,0b,0b,1b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"m","byte":[B;1b,0b,0b,1b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"n","byte":[B;1b,0b,0b,1b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"o","byte":[B;1b,0b,1b,0b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"p","byte":[B;1b,0b,1b,0b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"q","byte":[B;1b,0b,1b,0b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"r","byte":[B;1b,0b,1b,0b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"s","byte":[B;1b,0b,1b,1b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"t","byte":[B;1b,0b,1b,1b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"u","byte":[B;1b,0b,1b,1b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"v","byte":[B;1b,0b,1b,1b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"w","byte":[B;1b,1b,0b,0b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"x","byte":[B;1b,1b,0b,0b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"y","byte":[B;1b,1b,0b,0b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"z","byte":[B;1b,1b,0b,0b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"0","byte":[B;1b,1b,0b,1b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"1","byte":[B;1b,1b,0b,1b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"2","byte":[B;1b,1b,0b,1b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"3","byte":[B;1b,1b,0b,1b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"4","byte":[B;1b,1b,1b,0b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"5","byte":[B;1b,1b,1b,0b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"6","byte":[B;1b,1b,1b,0b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"7","byte":[B;1b,1b,1b,0b,1b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"8","byte":[B;1b,1b,1b,1b,0b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"9","byte":[B;1b,1b,1b,1b,0b,1b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"+","byte":[B;1b,1b,1b,1b,1b,0b]}
data modify storage dplib.datetime:time root.get_unix.base64.chr append value {"chr":"/","byte":[B;1b,1b,1b,1b,1b,1b]}

function dplib.datetime:private/module/get_unix/run