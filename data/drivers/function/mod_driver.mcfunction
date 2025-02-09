execute if score @s math_out matches 1.. run scoreboard players operation @s math_out -= @s math_n
execute if score @s math_out matches ..-1 run scoreboard players operation @s math_out += @s math_n
execute if score @s math_out >= @s math_n run function drivers:mod_driver
execute if score @s math_out matches ..-1 run function drivers:mod_driver