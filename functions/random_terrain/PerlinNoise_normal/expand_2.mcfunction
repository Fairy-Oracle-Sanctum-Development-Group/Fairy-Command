#恶地拓展
scoreboard players operation @s pn_h /= "100000" NUM
scoreboard players operation @s math_sqrt = @s pn_h
scoreboard players operation @s math_sqrt *= @s pn_h
scoreboard players add @s math_sqrt 3000
function math/sqrt
scoreboard players operation @s pn_h *= "24" NUM
tellraw @a { "rawtext": [ { "score": {"name": "@s", "objective": "pn_h" } },{ "text": "-" },{ "score": {"name": "@s", "objective": "math_sqrt" } }  ] }
scoreboard players operation @s pn_h /= @s math_sqrt
scoreboard players operation @s pn_h /= "4" NUM
scoreboard players add @s pn_h 10
