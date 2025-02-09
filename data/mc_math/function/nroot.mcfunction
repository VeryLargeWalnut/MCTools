# Defining necessary scoreboards
scoreboard objectives add math_inp dummy
scoreboard objectives add math_xi dummy
scoreboard objectives add math_xi_save dummy
scoreboard objectives add math_nminus dummy
scoreboard objectives add math_n dummy
scoreboard objectives add math_2 dummy
scoreboard objectives add math_10 dummy
scoreboard objectives add math_div dummy
scoreboard objectives add math_add dummy
scoreboard objectives add math_neg dummy
scoreboard objectives add math_diff dummy

# Creating constants
scoreboard players set @s math_neg -1
scoreboard players set @s math_2 2
scoreboard players set @s math_10 10
$scoreboard players set @s math_inp $(num)
$scoreboard players set @s math_n $(n)
scoreboard players operation @s math_nminus = @s math_n
scoreboard players remove @s math_nminus 1

# Running algorithm
scoreboard players operation @s math_xi = @s math_inp
scoreboard players operation @s math_xi /= @s math_2
scoreboard players operation @s math_diff = @s math_inp
scoreboard players operation @s math_diff -= @s math_xi
execute if score @s math_diff matches 1.. run function drivers:nroot_driver
scoreboard players operation @s math_out = @s math_xi_save

# Removing scoreboards after calculation is completed
scoreboard objectives remove math_inp
scoreboard objectives remove math_diff
scoreboard objectives remove math_neg
scoreboard objectives remove math_n
scoreboard objectives remove math_xi
scoreboard objectives remove math_xi_save
scoreboard objectives remove math_nminus
scoreboard objectives remove math_2
scoreboard objectives remove math_10
scoreboard objectives remove math_div
scoreboard objectives remove math_add
data remove storage mc_math:math_in num
data remove storage mc_math:math_in n