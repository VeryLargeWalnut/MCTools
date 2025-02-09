# Run Newton-Raphson Method for sqrt
scoreboard players operation @s math_cbrt_save = @s math_out
execute if score @s math_cbrt_save matches 1000.. run scoreboard players operation @s math_out /= @s math_10
scoreboard players operation @s math_out *= @s math_out
scoreboard players operation @s math_out *= @s math_cbrt_save
scoreboard players operation @s math_out *= @s math_2
scoreboard players operation @s math_add = @s math_in
execute if score @s math_cbrt_save matches 1000.. run scoreboard players operation @s math_add /= @s math_1000
scoreboard players operation @s math_out += @s math_add
scoreboard players operation @s math_out /= @s math_3
scoreboard players operation @s math_out /= @s math_cbrt_save
scoreboard players operation @s math_out /= @s math_cbrt_save
execute if score @s math_cbrt_save matches 1000.. run scoreboard players operation @s math_out *= @s math_1000
scoreboard players operation @s math_diff = @s math_cbrt_save
scoreboard players operation @s math_diff -= @s math_out
execute as @s if score @s math_diff matches ..0 run scoreboard players operation @s math_diff *= @s math_neg
execute as @s if score @s math_diff matches 1.. run function drivers:cbrt_driver