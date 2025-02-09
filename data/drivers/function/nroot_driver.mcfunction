# Run Newton-Raphson Method for nth root
scoreboard players operation @s math_add = @s math_inp
scoreboard players operation @s math_xi_save = @s math_xi
execute store result storage mc_math:math_in num int 1 run scoreboard players get @s math_10
execute store result storage mc_math:math_in n int 1 run scoreboard players get @s math_n
function mc_math:pow with storage mc_math:math_in
scoreboard players operation @s math_div = @s math_out
execute if score @s math_xi matches 100.. run scoreboard players operation @s math_add /= @s math_div
execute if score @s math_xi matches 100.. run scoreboard players operation @s math_xi /= @s math_10
execute store result storage mc_math:math_in num int 1 run scoreboard players get @s math_xi
execute store result storage mc_math:math_in n int 1 run scoreboard players get @s math_n
function mc_math:pow with storage mc_math:math_in
scoreboard players operation @s math_xi = @s math_out
scoreboard players operation @s math_xi *= @s math_nminus
scoreboard players operation @s math_xi += @s math_add
scoreboard players operation @s math_xi /= @s math_n
execute store result storage mc_math:math_in n int 1 run scoreboard players get @s math_nminus
function mc_math:pow with storage mc_math:math_in
scoreboard players operation @s math_xi /= @s math_out
execute if score @s math_xi_save matches 100.. run scoreboard players operation @s math_xi *= @s math_10
scoreboard players operation @s math_diff = @s math_xi_save
scoreboard players operation @s math_diff -= @s math_xi
execute if score @s math_diff matches ..-1 run scoreboard players operation @s math_diff *= @s math_neg
execute unless score @s math_diff matches ..1 run function drivers:nroot_driver