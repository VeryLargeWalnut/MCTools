execute if score @s math_in matches 6.. run scoreboard players add @s math_twos 1
execute if score @s math_in matches 6.. run scoreboard players operation @s math_in /= @s math_2
execute unless score @s math_in matches 6.. run function drivers:ln_calculator
execute if score @s math_in matches 6.. run function drivers:ln_initializer