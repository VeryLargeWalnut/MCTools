execute if score @s math_in matches ..-181 run scoreboard players add @s math_in 360
execute if score @s math_in matches 181.. run scoreboard players remove @s math_in 360
execute unless score @s math_in matches -180..180 run function drivers:wrap_angle