## Header 1

scoreboard players operation $out dplib.out = $in dplib.in
execute if score $in dplib.in < $min dplib.in run scoreboard players operation $out dplib.out = $min dplib.in
execute if score $in dplib.in > $max dplib.in run scoreboard players operation $out dplib.out = $max dplib.in