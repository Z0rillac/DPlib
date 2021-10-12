## Header 1

scoreboard players operation #a DPlib.temp = $in DPlib.in
scoreboard players operation #b DPlib.temp = $in DPlib.in
scoreboard players operation #c DPlib.temp = $scale DPlib.in
scoreboard players operation #c DPlib.temp /= 10 DPlib.const
scoreboard players operation #a DPlib.temp /= $scale DPlib.in
scoreboard players operation #b DPlib.temp /= #c DPlib.temp
scoreboard players operation #b DPlib.temp %= 10 DPlib.const
execute if score #b DPlib.temp matches 5.. run scoreboard players add #a DPlib.temp 1
scoreboard players operation #a DPlib.temp *= $scale DPlib.in
scoreboard players operation $out DPlib.out = #a DPlib.temp