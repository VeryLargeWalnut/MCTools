# Defining necessary scoreboards
scoreboard objectives add math_in dummy
scoreboard objectives add math_sqrt_save dummy
scoreboard objectives add math_2 dummy
scoreboard objectives add math_neg dummy
scoreboard objectives add math_diff dummy

# Creating constants
scoreboard players set @s math_neg -1
scoreboard players set @s math_2 2

# Running algorithm
$scoreboard players set @s math_in $(num)
scoreboard players operation @s math_out = @s math_in
scoreboard players operation @s math_out /= @s math_2
scoreboard players operation @s math_diff = @s math_in
scoreboard players operation @s math_diff -= @s math_out
execute if score @s math_diff matches 1.. run function drivers:sqrt_driver

# Removing scoreboards after calculation is completed
scoreboard objectives remove math_in
scoreboard objectives remove math_diff
scoreboard objectives remove math_neg
scoreboard objectives remove math_2
scoreboard objectives remove math_sqrt_save