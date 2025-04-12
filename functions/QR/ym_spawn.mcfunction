scoreboard players add @s qr_encode 0
scoreboard players add @s qr_decode 0

#0
execute if score @s qr_code matches 0 run scoreboard players operation @s GF_1 = @s qr_encode 
execute if score @s qr_code matches 0 run scoreboard players operation @s GF_1 += @s qr_decode 
execute if score @s qr_code matches 0 run scoreboard players operation @s GF_1 %= "2" NUM 

#1
execute if score @s qr_code matches 1 run scoreboard players operation @s GF_1 = @s qr_encode 
execute if score @s qr_code matches 1 run scoreboard players operation @s GF_1 %= "2" NUM 

#2
execute if score @s qr_code matches 2 run scoreboard players operation @s GF_1 = @s qr_decode 
execute if score @s qr_code matches 2 run scoreboard players operation @s GF_1 %= "3" NUM 

#3
execute if score @s qr_code matches 3 run scoreboard players operation @s GF_1 = @s qr_encode 
execute if score @s qr_code matches 3 run scoreboard players operation @s GF_1 += @s qr_decode 
execute if score @s qr_code matches 3 run scoreboard players operation @s GF_1 %= "3" NUM 

#4
execute if score @s qr_code matches 4 run scoreboard players operation @s GF_1 = @s qr_encode 
execute if score @s qr_code matches 4 run scoreboard players operation @s GF_1 /= "3" NUM
execute if score @s qr_code matches 4 run scoreboard players operation @s GF_2 = @s qr_decode 
execute if score @s qr_code matches 4 run scoreboard players operation @s GF_2 /= "2" NUM
execute if score @s qr_code matches 4 run scoreboard players operation @s GF_1 += @s GF_2
execute if score @s qr_code matches 4 run scoreboard players operation @s GF_1 %= "2" NUM 

#5
execute if score @s qr_code matches 5 run scoreboard players operation @s GF_1 = @s qr_encode 
execute if score @s qr_code matches 5 run scoreboard players operation @s GF_1 *= @s qr_decode 
execute if score @s qr_code matches 5 run scoreboard players operation @s GF_2 = @s GF_1
execute if score @s qr_code matches 5 run scoreboard players operation @s GF_1 %= "2" NUM
execute if score @s qr_code matches 5 run scoreboard players operation @s GF_2 %= "3" NUM
execute if score @s qr_code matches 5 run scoreboard players operation @s GF_1 += @s GF_2

#6
execute if score @s qr_code matches 6 run scoreboard players operation @s GF_1 = @s qr_encode 
execute if score @s qr_code matches 6 run scoreboard players operation @s GF_1 *= @s qr_decode 
execute if score @s qr_code matches 6 run scoreboard players operation @s GF_2 = @s GF_1
execute if score @s qr_code matches 6 run scoreboard players operation @s GF_1 %= "2" NUM
execute if score @s qr_code matches 6 run scoreboard players operation @s GF_2 %= "3" NUM
execute if score @s qr_code matches 6 run scoreboard players operation @s GF_1 += @s GF_2
execute if score @s qr_code matches 6 run scoreboard players operation @s GF_1 %= "2" NUM

#7
execute if score @s qr_code matches 7 run scoreboard players operation @s GF_1 = @s qr_encode 
execute if score @s qr_code matches 7 run scoreboard players operation @s GF_1 *= @s qr_decode 
execute if score @s qr_code matches 7 run scoreboard players operation @s GF_2 = @s qr_encode
execute if score @s qr_code matches 7 run scoreboard players operation @s GF_2 += @s qr_decode
execute if score @s qr_code matches 7 run scoreboard players operation @s GF_1 %= "3" NUM
execute if score @s qr_code matches 7 run scoreboard players operation @s GF_2 %= "2" NUM
execute if score @s qr_code matches 7 run scoreboard players operation @s GF_1 += @s GF_2
execute if score @s qr_code matches 7 run scoreboard players operation @s GF_1 %= "2" NUM




execute if score @s GF_1 matches 0 run setblock ~~~ minecraft:black_concrete
execute if score @s GF_1 matches !0 run setblock ~~~ minecraft:white_concrete
execute unless block ~~-1~ minecraft:air [] run setblock ~~~ air



tp @s ~-1~~
scoreboard players add @s qr_encode 1
execute if score @s qr_encode matches 33 run tp @s ~33~~1
execute if score @s qr_encode matches 33 run scoreboard players add @s qr_decode 1
execute if score @s qr_encode matches 33 run scoreboard players set @s qr_encode 0
execute if score @s qr_decode matches 33 run kill @s

#By Baby_2016