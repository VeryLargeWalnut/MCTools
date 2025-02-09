scoreboard objectives add math_in dummy
scoreboard objectives add math_10000 dummy
scoreboard objectives add math_2 dummy
scoreboard objectives add math_10 dummy
scoreboard objectives add math_term dummy
scoreboard objectives add math_twos dummy
scoreboard objectives add math_out_save dummy

scoreboard players set @s math_2 2
scoreboard players set @s math_10 10
$scoreboard players set @s math_in $(num)
scoreboard players set @s math_10000 10000
scoreboard players set @s math_twos 0

function drivers:ln_initializer

scoreboard players operation @s math_out_save = @s math_out

scoreboard players set @s math_in 2
function drivers:ln_initializer
scoreboard players operation @s math_out *= @s math_twos
scoreboard players operation @s math_out += @s math_out_save

scoreboard objectives remove math_in
scoreboard objectives remove math_10000
scoreboard objectives remove math_2
scoreboard objectives remove math_10
scoreboard objectives remove math_term
scoreboard objectives remove math_twos
scoreboard objectives remove math_out_save