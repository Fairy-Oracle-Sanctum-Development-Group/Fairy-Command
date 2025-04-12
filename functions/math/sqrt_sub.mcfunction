###
scoreboard players operation @s math_1 = @s math_sqrt
scoreboard players operation @s math_1 /= @s math_3
scoreboard players operation @s math_1 += @s math_3
scoreboard players operation @s math_1 /= @s math_2
scoreboard players operation @s math_3 = @s math_1
scoreboard players remove @s math_4 1
execute as @s[scores={math_4=1..}] run function math/sqrt_sub
