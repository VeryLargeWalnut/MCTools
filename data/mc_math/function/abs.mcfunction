scoreboard objectives add math_neg dummy
scoreboard players set @s math_neg -1
$scoreboard players set @s math_out $(num)
execute if score @s math_out matches ..0 run scoreboard players operation @s math_out *= @s math_neg
scoreboard objectives remove math_neg