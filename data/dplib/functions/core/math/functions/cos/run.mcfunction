##
 # run.mcfunction
 # 
 #
 # Created by Zorillac.
##
#(40000x(180-x))/(40500-x(180-x))*100000

scoreboard players operation #x dplib.temp = $in dplib.in
scoreboard players add #x dplib.temp 90
scoreboard players operation #p dplib.temp = #x dplib.temp
scoreboard players set $scale dplib.out 1000000000
scoreboard players operation #x dplib.temp %= 180 dplib.const
scoreboard players operation #p dplib.temp %= 360 dplib.const
scoreboard players set #x(180-x) dplib.temp 180
scoreboard players operation #x(180-x) dplib.temp -= #x dplib.temp
scoreboard players operation #x(180-x) dplib.temp *= #x dplib.temp
scoreboard players operation #40000x(180-x) dplib.temp = #x(180-x) dplib.temp
scoreboard players operation #40000x(180-x) dplib.temp *= 40000 dplib.const
scoreboard players set #40500-x(180-x) dplib.temp 40500
scoreboard players operation #40500-x(180-x) dplib.temp -= #x(180-x) dplib.temp
scoreboard players operation #40000x(180-x) dplib.temp /= #40500-x(180-x) dplib.temp
scoreboard players operation #40000x(180-x) dplib.temp *= 100000 dplib.const
execute if score #p dplib.temp matches 180..359 run scoreboard players operation #40000x(180-x) dplib.temp *= -1 dplib.const

scoreboard players operation $out dplib.out = #40000x(180-x) dplib.temp