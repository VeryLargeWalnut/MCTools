scoreboard objectives add math_in dummy
scoreboard objectives add math_exp dummy
$scoreboard players set @s math_in $(num)
$scoreboard players set @s math_exp $(n)
scoreboard players set @s math_out 1
function drivers:power_driver
scoreboard objectives remove math_in
scoreboard objectives remove math_exp