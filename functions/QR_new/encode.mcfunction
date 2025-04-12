#
scoreboard objectives add qr_encode_test dummy
#
scoreboard players operation @s qr_encode_test = @s qr_encode
scoreboard players operation @s qr_encode_test %= "2" NUM
scoreboard players operation @s qr_encode /= "2" NUM
#
execute if score @s qr_encode matches 0 run setblock ~~~ minecraft:white_concrete
execute if score @s qr_encode_test matches 0 run setblock ~~~ minecraft:white_concrete
execute if score @s qr_encode_test matches 1 run setblock ~~~ minecraft:black_concrete
#
execute if score @s qr_encode_l matches 1.. run tp @s ~-1~~
execute if score @s qr_encode_l matches 1.. run scoreboard players add @s[scores={qr_prg=3}] qr_encode_lall 1
execute if score @s qr_encode_l matches 1.. run scoreboard players add @s qr_encode_l -1
execute if score @s qr_encode_l matches ..0 run tp @s @e[name=qr_encode_back]
execute if score @s qr_encode_l matches ..0 run kill @e[name=qr_encode_back]
execute if score @s qr_encode_l matches ..0 run scoreboard players add @s qr_prg 1













