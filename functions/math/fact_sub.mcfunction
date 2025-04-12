scoreboard players operation @s math_1 *= @s math_fact
scoreboard players remove @s math_fact 1
execute as @s[scores={math_fact=1..}] run function math/fact_sub
