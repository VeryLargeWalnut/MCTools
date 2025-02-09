scoreboard players operation @s math_out *= @s math_in
scoreboard players remove @s math_exp 1
execute unless score @s math_exp matches 0 run function drivers:power_driver