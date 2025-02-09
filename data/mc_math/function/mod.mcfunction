scoreboard objectives add math_n dummy
$scoreboard players set @s math_out $(num)
$scoreboard players set @s math_n $(n)
execute if score @s math_out >= @s math_n run function drivers:mod_driver
execute if score @s math_out matches ..-1 run function drivers:mod_driver
scoreboard objectives remove math_n