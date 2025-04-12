scoreboard players set @s math_3 1
scoreboard players set @s[scores={math_sin=..-1}] math_3 -1
scoreboard players operation @s[scores={math_sin=..-1}] math_sin *= "-1" NUM
scoreboard players operation @s[scores={math_sin=360..}] math_sin %= "360" NUM

scoreboard players operation @s math_1 = @s math_sin
scoreboard players operation @s math_1 *= "4" NUM
scoreboard players set @s math_2 180
scoreboard players operation @s math_2 -= @s math_sin
scoreboard players operation @s math_1 *= @s math_2
scoreboard players operation @s math_2 *= @s math_sin
scoreboard players add @s math_2 -40500
scoreboard players operation @s math_2 *= "-1" NUM
scoreboard players operation @s math_1 *= "100" NUM
scoreboard players operation @s math_1 /= @s math_2
scoreboard players operation @s math_1 *= @s math_3
scoreboard players operation @s math_sin = @s math_1

scoreboard players reset @s math_1 
scoreboard players reset @s math_2
scoreboard players reset @s math_3 