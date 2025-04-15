scoreboard players set @s qr_decode 0
execute if block ~~~ minecraft:black_concrete [] run scoreboard players add @s qr_decode 1
execute if block ~-1~~ minecraft:black_concrete [] run scoreboard players add @s qr_decode 2
execute if block ~-2~~ minecraft:black_concrete [] run scoreboard players add @s qr_decode 4
execute if block ~-3~~ minecraft:black_concrete [] run scoreboard players add @s qr_decode 8
execute if block ~-4~~ minecraft:black_concrete [] run scoreboard players add @s qr_decode 16
execute if block ~-5~~ minecraft:black_concrete [] run scoreboard players add @s qr_decode 32
execute if block ~-6~~ minecraft:black_concrete [] run scoreboard players add @s qr_decode 64
execute if block ~-7~~ minecraft:black_concrete [] run scoreboard players add @s qr_decode 128
tellraw @s { "rawtext": [ { "score": {"name": "@s", "objective": "qr_decode" } } ] }
