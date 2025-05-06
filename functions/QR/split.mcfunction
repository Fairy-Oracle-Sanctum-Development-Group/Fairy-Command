#分割数据码
structure save qr_split ~8~~ ~1~~
execute as @e[name=qr_split_set] at @s run structure load qr_split ~1~~ 0_degrees none false true
tp @s ~8~~
execute as @e[name=qr_split_set] at @s run tp @s ~8~~
scoreboard players add @s qr_decode 1
scoreboard players add @s qr_encode 1
scoreboard players add @e[name=qr_split_set] qr_decode 1
scoreboard players operation @s qr_encode_l = @s qr_decode
scoreboard players operation @s qr_encode_l %= "8" NUM
execute if entity @s[scores={qr_encode_l=0}] run tp @s ~-64~1~

scoreboard players operation @e[name=qr_split_set] qr_encode = @e[name=qr_split_set] qr_decode
scoreboard players operation @e[name=qr_split_set] qr_encode %= "8" NUM

execute if score @s qr_encode = @s qr_split as @e[name=qr_split_sub] at @s run tp @s ~~~1
execute if score @s qr_encode = @s qr_split as @e[name=qr_split_set,tag=!qr_readhigh_tag] at @s if block ~~~-1 minecraft:air [] run summon minecraft:armor_stand qr_readhigh_tag ~-7~~
execute if score @s qr_encode = @s qr_split as @e[name=qr_split_set,tag=!qr_readhigh_tag] at @s if block ~~~-1 minecraft:air [] run tag @s add qr_readhigh_tag

execute as @e[name=qr_split_set,scores={qr_encode=0}] at @s run tp @s ~-64~1~

execute if score @s qr_encode = @s qr_split as @e[name=qr_split_sub] at @s run tp @e[name=qr_split_set] @s
execute if score @s qr_encode = @s qr_split as @e[name=qr_split_sub] at @s run scoreboard players set @e[name=qr_split_set] qr_decode 0
execute if score @s qr_encode = @s qr_split run scoreboard players set @e[name=qr_main] qr_prg 106

