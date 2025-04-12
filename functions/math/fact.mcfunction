function math/main
###
scoreboard players set @s math_1 1
function math/fact_sub
scoreboard players operation @s math_fact = @s math_1
scoreboard players reset @s math_1