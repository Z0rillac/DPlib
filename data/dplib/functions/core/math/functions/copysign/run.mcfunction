## Header 1

scoreboard players operation $out DPlib.out = $number DPlib.in
execute if score $number DPlib.in matches ..-1 run scoreboard players operation $out DPlib.out *= -1 DPlib.const
execute if score $source DPlib.in matches ..-1 run scoreboard players operation $out DPlib.out *= -1 DPlib.const