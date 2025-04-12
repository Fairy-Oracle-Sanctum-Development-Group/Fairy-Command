function math/main
###
scoreboard players set @s math_3 1
scoreboard players set @s math_2 2
scoreboard players operation @s math_4 = n math_sqrt

function math/sqrt_sub
scoreboard players operation @s math_sqrt = @s math_3
scoreboard players reset @s math_1 
scoreboard players reset @s math_2
scoreboard players reset @s math_3 
scoreboard players reset @s math_4 







