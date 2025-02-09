# "num" is the angle in degrees, "math_out" is the sine of the angle scaled up by 100
scoreboard objectives add math_in dummy
scoreboard objectives add math_100 dummy
scoreboard objectives add math_57 dummy
scoreboard objectives add math_const dummy
scoreboard objectives add math_term dummy
$scoreboard players set @s math_in $(num)
function drivers:wrap_angle
scoreboard players set @s math_57 57
scoreboard players set @s math_100 100

# First order term
scoreboard players operation @s math_out = @s math_in
scoreboard players operation @s math_out *= @s math_100
scoreboard players operation @s math_out /= @s math_57

# Third order term
scoreboard players set @s math_const 6
scoreboard players operation @s math_term = @s math_in
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term *= @s math_100
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term /= @s math_const
scoreboard players operation @s math_out -= @s math_term

# Fifth order term
scoreboard players set @s math_const 120
scoreboard players operation @s math_term = @s math_in
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_100
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term /= @s math_const
scoreboard players operation @s math_out += @s math_term

# Seventh order term
scoreboard players set @s math_const 5040
scoreboard players operation @s math_term = @s math_in
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_100
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term /= @s math_const
scoreboard players operation @s math_out -= @s math_term

# Ninth order term
scoreboard players set @s math_const 362880
scoreboard players operation @s math_term = @s math_in
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_in
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term *= @s math_100
scoreboard players operation @s math_term /= @s math_57
scoreboard players operation @s math_term /= @s math_const
scoreboard players operation @s math_out += @s math_term

# Remove scoreboards
scoreboard objectives remove math_in
scoreboard objectives remove math_57
scoreboard objectives remove math_100
scoreboard objectives remove math_const
scoreboard objectives remove math_term