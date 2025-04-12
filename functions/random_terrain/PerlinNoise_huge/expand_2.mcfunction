#恶地拓展
scoreboard players operation @s pn_h /= "1000000" NUM
scoreboard players operation @s math_sqrt = @s pn_h
scoreboard players operation @s math_sqrt *= @s pn_h
scoreboard players add @s math_sqrt 640
function math/sqrt
scoreboard players operation @s pn_h *= "32" NUM
tellraw @a { "rawtext": [ { "score": {"name": "@s", "objective": "pn_h" } },{ "text": "-" },{ "score": {"name": "@s", "objective": "math_sqrt" } }  ] }
scoreboard players operation @s pn_h /= @s math_sqrt
scoreboard players operation @s pn_h /= "5" NUM
scoreboard players add @s pn_h 10
