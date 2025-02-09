# Defining necessary scoreboards
scoreboard objectives add math_in dummy
scoreboard objectives add math_cbrt_save dummy
scoreboard objectives add math_2 dummy
scoreboard objectives add math_3 dummy
scoreboard objectives add math_10 dummy
scoreboard objectives add math_1000 dummy
scoreboard objectives add math_add dummy
scoreboard objectives add math_neg dummy
scoreboard objectives add math_diff dummy

# Creating constants
scoreboard players set @s math_neg -1
scoreboard players set @s math_2 2
scoreboard players set @s math_3 3
scoreboard players set @s math_10 10
scoreboard players set @s math_1000 1000

# Running algorithm
$scoreboard players set @s math_in $(num)
scoreboard players operation @s math_out = @s math_in
scoreboard players operation @s math_out /= @s math_2
scoreboard players operation @s math_diff = @s math_in
scoreboard players operation @s math_diff -= @s math_out
execute if score @s math_diff matches 1.. run function drivers:cbrt_driver

# Removing scoreboards after calculation is completed
scoreboard objectives remove math_in
scoreboard objectives remove math_diff
scoreboard objectives remove math_neg
scoreboard objectives remove math_2
scoreboard objectives remove math_3
scoreboard objectives remove math_10
scoreboard objectives remove math_1000
scoreboard objectives remove math_add
scoreboard objectives remove math_cbrt_save