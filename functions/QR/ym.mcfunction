scoreboard players set @s qr_encode 0
execute if block ~~~ minecraft:white_concrete [] run scoreboard players add @s qr_encode 1
execute if block ~~1~ minecraft:white_concrete [] run scoreboard players add @s qr_encode -1

execute if block ~~~ minecraft:black_concrete [] run scoreboard players add @s qr_encode 2
execute if block ~~1~ minecraft:black_concrete [] run scoreboard players add @s qr_encode -2

execute if block ~~1~ minecraft:air [] run scoreboard players reset @s qr_encode 

execute if block ~~~ minecraft:air [] if block ~~1~ minecraft:white_concrete [] run scoreboard players set @s qr_encode -10
execute if block ~~~ minecraft:air [] if block ~~1~ minecraft:black_concrete [] run scoreboard players set @s qr_encode 10

execute if score @s qr_encode matches -10..10 run fill ~~~ ~~1~ minecraft:air
execute if score @s qr_encode matches !0 run setblock ~~~ minecraft:black_concrete
execute if score @s qr_encode matches 0 run setblock ~~~ minecraft:white_concrete
execute if score @s qr_encode matches -10 run setblock ~~~ minecraft:white_concrete
execute if score @s qr_encode matches 10 run setblock ~~~ minecraft:black_concrete

tp @s ~1~~ 
scoreboard players add @s qr_decode 1
execute if score mode qr_uid matches 1..3 if score @s qr_decode = @s GF_1 run tp @s ~-29~~1
execute if score mode qr_uid matches 4..6 if score @s qr_decode = @s GF_1 run tp @s ~-41~~1
execute if score mode qr_uid matches 7..9 if score @s qr_decode = @s GF_1 run tp @s ~-53~~1
execute if score mode qr_uid matches 10..11 if score @s qr_decode = @s GF_1 run tp @s ~-61~~1
execute if score @s qr_decode = @s GF_1 run scoreboard players add @s qr_encode_l 1
execute if score @s qr_decode = @s GF_1 run scoreboard players set @s qr_decode 0
execute if score @s qr_encode_l = @s GF_1 run scoreboard players set @e[name=qr_main,scores={qr_prg=19}] qr_prg 20
execute if score @s qr_encode_l = @s GF_1 as @e[name=qr_main] run scoreboard players operation time qr_uid /= "20" NUM
execute if score @s qr_encode_l = @s GF_1 as @e[name=qr_main] run tellraw @a { "rawtext": [ { "text": "\n§b§l二维码生成完毕\n§f用时： §6"},{ "score": {"name": "time", "objective": "qr_uid" }},{ "text": "S\n§l" }] }
execute if score @s qr_encode_l = @s GF_1 run kill @e[name=qr_main]
execute if score @s qr_encode_l = @s GF_1 run kill @e[name=qr_read]
execute if score @s qr_encode_l = @s GF_1 run kill @e[name=qr_decode]
execute if score @s qr_encode_l = @s GF_1 run kill @e[name=qr_split]
execute if score @s qr_encode_l = @s GF_1 run kill @e[name=qr_split_set]
execute if score @s qr_encode_l = @s GF_1 run kill @e[name=qr_split_sub]
execute if score @s qr_encode_l = @s GF_1 run kill @e[name=qr_ym]

#By Baby_2016