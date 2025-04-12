#恶地拓展
scoreboard players operation @s pn_h /= "a2" pn_a
execute if score @s pn_h matches ..0 run scoreboard players operation @s pn_h *= "a8" pn_a
scoreboard players operation @s pn_a = @s pn_h
scoreboard players add @s pn_a 50
scoreboard players operation @s pn_h *= "16" NUM
scoreboard players operation @s pn_h /= @s pn_a
#scoreboard players add @s pn_h 5
#tellraw @a { "rawtext": [ { "score": {"name": "@s", "objective": "pn_h" } }  ] }