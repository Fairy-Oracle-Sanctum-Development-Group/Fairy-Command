scoreboard players operation @s[scores={math_cos=..-1}] math_cos *= "-1" NUM
scoreboard players operation @s[scores={math_cos=360..}] math_cos %= "360" NUM

scoreboard players operation @s math_1 = @s math_cos
scoreboard players operation @s math_1 *= @s math_cos
scoreboard players operation @s math_2 = @s math_1
scoreboard players operation @s math_1 *= "-1" NUM
scoreboard players add @s math_1 8100
scoreboard players operation @s math_1 *= "4" NUM

scoreboard players add @s math_2 32400
scoreboard players operation @s math_1 *= "100" NUM
scoreboard players operation @s math_1 /= @s math_2
scoreboard players operation @s math_cos = @s math_1

scoreboard players reset @s math_1 
scoreboard players reset @s math_2
