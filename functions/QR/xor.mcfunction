#
execute if block ~~~-2 minecraft:air [] run setblock ~~~-2 minecraft:white_concrete

#
execute if block ~~~-2 minecraft:white_concrete [] if block ~~~-4 minecraft:white_concrete [] run setblock ~~~ minecraft:white_concrete
execute if block ~~~-2 minecraft:black_concrete [] if block ~~~-4 minecraft:black_concrete [] run setblock ~~~ minecraft:white_concrete
execute if block ~~~-2 minecraft:white_concrete [] if block ~~~-4 minecraft:black_concrete [] run setblock ~~~ minecraft:black_concrete
execute if block ~~~-2 minecraft:black_concrete [] if block ~~~-4 minecraft:white_concrete [] run setblock ~~~ minecraft:black_concrete

tp @s ~1~~
scoreboard players add @s qr_encode 1
execute if score @s qr_encode matches 64 run tp @s ~-64~1~
execute if score @s qr_encode matches 128 run tp @s ~-64~1~
execute if score @s qr_encode matches 192 run tp @s ~-64~1~
execute if score @s qr_encode matches 256 run tp @s ~-64~1~
execute if score @s qr_encode matches 320 run tp @s ~-64~1~
execute if score @s qr_encode matches 384 run tp @s ~-64~1~
execute if score @s qr_encode matches 448 run tp @s ~-64~1~
execute if score @s qr_encode matches 512 run tp @s ~-64~1~
execute if score @s qr_encode matches 576 run tp @s ~-64~1~
execute if score @s qr_encode matches 640 run tp @s ~-64~1~
execute if score @s qr_encode matches 704 run tp @s ~-64~1~
execute if score @s qr_encode matches 768 run tp @s ~-64~1~
execute if score @s qr_encode matches 832 run tp @s ~-64~1~
execute if score @s qr_encode matches 896 run tp @s ~-64~1~
execute if score @s qr_encode matches 960 run tp @s ~-64~1~
execute if score @s qr_encode matches 1024 run tp @s ~-64~1~
execute if score @s qr_encode matches 1088 run tp @s ~-64~1~
execute if score @s qr_encode matches 1152 run tp @s ~-64~1~
execute if score @s qr_encode matches 1216 run tp @s ~-64~1~
execute if score @s qr_encode matches 1280 run tp @s ~-64~1~

execute if score @s qr_encode = @s qr_encode_lall run scoreboard players set @e[name=qr_main,scores={qr_prg=12}] qr_prg 13
execute if score @s qr_encode = @s qr_encode_lall run kill @s

#By Baby_2016