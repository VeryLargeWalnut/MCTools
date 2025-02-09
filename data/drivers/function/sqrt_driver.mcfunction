# Run Newton-Raphson Method for sqrt
scoreboard players operation @s math_sqrt_save = @s math_out
scoreboard players operation @s math_out *= @s math_out
scoreboard players operation @s math_out += @s math_in
scoreboard players operation @s math_out /= @s math_2
scoreboard players operation @s math_out /= @s math_sqrt_save
scoreboard players operation @s math_diff = @s math_sqrt_save
scoreboard players operation @s math_diff -= @s math_out
execute as @s if score @s math_diff matches ..0 run scoreboard players operation @s math_diff *= @s math_neg
execute as @s if score @s math_diff matches 1.. run function drivers:sqrt_driver