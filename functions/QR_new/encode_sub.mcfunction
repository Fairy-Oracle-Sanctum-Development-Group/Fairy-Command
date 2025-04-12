#
execute as @e[name=qr_encode_sub] at @s run scoreboard players operation @s qr_encode_test = @s qr_encode

#
execute as @e[name=qr_encode_sub] at @s run scoreboard players operation @s qr_encode_test %= "2" NUM
execute as @e[name=qr_encode_sub] at @s run scoreboard players operation @s qr_encode /= "2" NUM
execute as @e[name=qr_encode_sub] at @s if score @s qr_encode matches 0 run setblock ~~~ minecraft:white_concrete
execute as @e[name=qr_encode_sub] at @s if score @s qr_encode_test matches 0 run setblock ~~~ minecraft:white_concrete
execute as @e[name=qr_encode_sub] at @s if score @s qr_encode_test matches 1 run setblock ~~~ minecraft:black_concrete
execute as @e[name=qr_encode_sub] at @s if score @s qr_encode_l matches 1.. run tp @s ~-1~~
execute as @e[name=qr_encode_sub] at @s if score @s qr_encode_l matches 1.. run scoreboard players add @s qr_encode_l -1

#
execute as @e[name=qr_encode_sub] at @s if score @s qr_encode_l matches ..0 run scoreboard players set @e[name=qr_main,scores={qr_prg=10}] qr_prg 11
execute as @e[name=qr_encode_sub] at @s if score @s qr_encode_l matches ..0 at @s run kill @s
