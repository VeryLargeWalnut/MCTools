scoreboard objectives add math_sine dummy
scoreboard objectives add math_100_new dummy
scoreboard objectives add math_inp dummy
scoreboard players set @s math_100_new 100
$scoreboard players set @s math_inp $(num)
execute store result storage mc_math:math_in num int 1 run scoreboard players get @s math_inp
function mc_math:sin with storage mc_math:math_in
scoreboard players operation @s math_sine = @s math_out
scoreboard players operation @s math_sine *= @s math_100_new
function mc_math:cos with storage mc_math:math_in
scoreboard players operation @s math_sine /= @s math_out
scoreboard players operation @s math_out = @s math_sine
scoreboard objectives remove math_sine
scoreboard objectives remove math_100_new
scoreboard objectives remove math_inp