# Iterative step
scoreboard players remove @s math_n_save 1
scoreboard players operation @s math_right = @s math_left
scoreboard players operation @s math_left -= @s math_delt
# Calculation
scoreboard players operation @s math_term = @s math_mult
scoreboard players operation @s math_term *= @s math_10
scoreboard players operation @s math_term /= @s math_right
scoreboard players operation @s math_val = @s math_mult
scoreboard players operation @s math_val *= @s math_10
scoreboard players operation @s math_val /= @s math_left
scoreboard players operation @s math_term += @s math_val
scoreboard players operation @s math_out_save = @s math_term
scoreboard players operation @s math_out_save *= @s math_delt
scoreboard players operation @s math_out_save /= @s math_2
scoreboard players operation @s math_out_save /= @s math_mult
scoreboard players operation @s math_out += @s math_out_save
tellraw @s {"score":{"name":"*","objective":"math_out"}}
execute unless score @s math_n_save matches 0 run function drivers:ln_calculator