#execute unless entity @e[name=qr_module] run summon minecraft:armor_stand qr_module
execute as @e[name=qr_module] run scoreboard players operation @s qr_code = "mode" qr_uid
execute as @e[name=qr_module] run scoreboard players operation @s qr_code *= "4" NUM
execute as @e[name=qr_module] run scoreboard players add @s qr_code 17


execute as @e[name=qr_module] run scoreboard players add @s qr_encode 1
execute as @e[name=qr_module] at @s run summon minecraft:armor_stand qr_module_a 
execute as @e[name=qr_module] at @s run scoreboard players operation @e[name=qr_module_a,r=0.5] qr_code = @s qr_code
execute as @e[name=qr_module] at @s run scoreboard players operation @e[name=qr_module_a,r=0.5] qr_encode = @s qr_encode

execute as @e[name=qr_module_a] run scoreboard players add @s qr_decode 1
execute as @e[name=qr_module_a] run scoreboard players operation @s qr_encode_lall = @s qr_encode
execute as @e[name=qr_module_a] run scoreboard players operation @s qr_encode_lall += @s qr_decode
execute as @e[name=qr_module_a] run scoreboard players operation @s qr_encode_lall %= "2" NUM
execute as @e[name=qr_module_a,scores={qr_encode_lall=0}] at @s if block ~~-2~ minecraft:air [] run setblock ~~~ minecraft:black_concrete
execute as @e[name=qr_module_a,scores={qr_encode_lall=1}] at @s if block ~~-2~ minecraft:air [] run setblock ~~~ minecraft:white_concrete

execute as @e[name=qr_module] at @s run tp @s ~~~1
execute as @e[name=qr_module] if score @s qr_encode = @s qr_code run kill @s
execute as @e[name=qr_module_a] at @s run tp @s ~1~~
execute as @e[name=qr_module_a] if score @s qr_decode = @s qr_code run kill @s
