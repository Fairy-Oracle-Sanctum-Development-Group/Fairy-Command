execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 1 run summon minecraft:armor_stand qr_fill ~1~-0.5~28
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 2 run summon minecraft:armor_stand qr_fill ~1~-0.5~32
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 3 run summon minecraft:armor_stand qr_fill ~1~-0.5~36
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 4 run summon minecraft:armor_stand qr_fill ~1~-0.5~40
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 5 run summon minecraft:armor_stand qr_fill ~1~-0.5~44
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 6 at @e[name=qr_split_set] run summon minecraft:armor_stand qr_fill ~1~-0.5~42
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 7 at @e[name=qr_split_set] run summon minecraft:armor_stand qr_fill ~1~-0.5~46
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 8 at @e[name=qr_split_set] run summon minecraft:armor_stand qr_fill ~1~-0.5~50
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 9 at @e[name=qr_split_set] run summon minecraft:armor_stand qr_fill ~1~-0.5~54
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 10 at @e[name=qr_split_set] run summon minecraft:armor_stand qr_fill ~1~-0.5~58
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 11 at @e[name=qr_split_set] run summon minecraft:armor_stand qr_fill ~1~-0.5~62
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 12 at @e[name=qr_split_set] run summon minecraft:armor_stand qr_fill ~1~-0.5~66

#
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 10 at @e[name=qr_split_set] run tag @e[name=qr_read] add qr_read_more
#execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 6 at @e[name=qr_fill] run setblock ~~3~ bedrock

execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 1 run scoreboard players set @e[name=qr_read] qr_encode_lall 152
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 1 run scoreboard players set @e[name=qr_read] qr_xor 56
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 2 run scoreboard players set @e[name=qr_read] qr_encode_lall 272
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 2 run scoreboard players set @e[name=qr_read] qr_xor 80
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 3 run scoreboard players set @e[name=qr_read] qr_encode_lall 440
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 3 run scoreboard players set @e[name=qr_read] qr_xor 120
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 4 run scoreboard players set @e[name=qr_read] qr_encode_lall 640
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 4 run scoreboard players set @e[name=qr_read] qr_xor 160
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 5 run scoreboard players set @e[name=qr_read] qr_encode_lall 864
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 5 run scoreboard players set @e[name=qr_read] qr_xor 208

execute as @e[name=qr_main,scores={qr_prg=16}] run scoreboard players set @a qr_decode 0
scoreboard players add @e[name=qr_read] qr_code 0
execute as @e[name=qr_main,scores={qr_prg=16}] run scoreboard players set @e[name=qr_fill] qr_prg 1
scoreboard players set @e[name=qr_main,scores={qr_prg=16}] qr_prg 17

#
execute if entity @e[name=qr_main,scores={qr_prg=17}] if score mode qr_uid matches ..5 run function QR_new/read_low
execute if entity @e[name=qr_main,scores={qr_prg=17}] if score mode qr_uid matches 6.. run function QR_new/read_high


execute as @e[name=qr_fill] run scoreboard players set @e[name=qr_fill] qr_code 0
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] run scoreboard players add @a qr_decode 1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:red_wool [] run scoreboard players set @s qr_code 1 
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:blue_wool [] run scoreboard players set @s qr_code 2
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:black_wool [] run scoreboard players set @s qr_code 3 
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:green_wool [] run scoreboard players set @s qr_code 4 
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:pink_wool [] run scoreboard players set @s qr_code 5 
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:yellow_wool [] run scoreboard players set @s qr_code 6 
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:purple_wool [] run scoreboard players set @s qr_code 7
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:bedrock [] run scoreboard players set @s qr_code 8 
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:orange_wool [] run scoreboard players set @s qr_code 9
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:light_blue_wool [] run scoreboard players set @s qr_code 10
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:brown_wool [] run scoreboard players set @s qr_code 11
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:gray_wool [] run scoreboard players set @s qr_code 12
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:cyan_wool [] run scoreboard players set @s qr_code 13
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:iron_block [] run scoreboard players set @s qr_code 14
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:gold_block [] run scoreboard players set @s qr_code 15
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:emerald_block [] run scoreboard players set @s qr_code 16
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:diamond_block [] run scoreboard players set @s qr_code 17
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:netherite_block [] run scoreboard players set @s qr_code 18
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:lapis_block [] run scoreboard players set @s qr_code 19
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill] at @s if block ~~1~ minecraft:light_gray_wool [] run scoreboard players set @s qr_code 20

execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=0}] at @s run tp @s ~~~-1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=1..}] at @s run setblock ~~1~ minecraft:air
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=1}] at @s run tp @s ~1~~1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=2}] at @s run tp @s ~-1~~1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=3}] at @s run tp @s ~1~~
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=4}] at @s run tp @s ~2~~1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=5}] at @s run tp @s ~-2~~1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=6}] at @s run tp @s ~8~~-1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=7}] at @s run tp @s ~~~-2
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=9}] at @s run tp @s ~6~~1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=10}] at @s run tp @s ~-6~~1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=11}] at @s run tp @s ~7~~-2
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=12}] at @s run tp @s ~-2~~2
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=13}] at @s run tp @s ~2~~
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=14}] at @s run tp @s ~-4~~2
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=15}] at @s run tp @s ~6~~1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=16}] at @s run tp @s ~-6~~1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=17}] at @s run tp @s ~-1~~
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=18}] at @s run tp @s ~-2~~1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=19}] at @s run tp @s ~-1~~1
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=20}] at @s run tp @s ~-2~~
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=8}] at @s run tellraw @a { "rawtext": [ { "text": "填充完毕\n与掩码图案进行异或运算"}]}
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=8}] at @s run scoreboard players set @e[name=qr_main,scores={qr_prg=17}] qr_prg 18
execute as @e[name=qr_fill,scores={qr_code=8}] at @s run kill @s
#
execute if score mode qr_uid matches 1..3 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~8 run structure save qr_4 ~28~~28 ~~~ 
execute if score mode qr_uid matches 4..5 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~8 run structure save qr_4 ~40~~40 ~~~ 

execute if score mode qr_uid matches 1..3 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~40 run structure load qr_4 ~~~
execute if score mode qr_uid matches 4..5 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~52 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~72 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~8 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~40 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~72 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~8 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~40 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~72 run structure load qr_4 ~~~

execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~1~~40 run structure load qr_matrix1_0 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~1~~72 run structure load qr_matrix1_1 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~33~~8 run structure load qr_matrix1_2 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~33~~40 run structure load qr_matrix1_3 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~33~~72 run structure load qr_matrix1_4 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~65~~8 run structure load qr_matrix1_5 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~65~~40 run structure load qr_matrix1_6 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~65~~72 run structure load qr_matrix1_7 ~~1~

execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~1~~40 run structure load qr_matrix2_0 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~1~~72 run structure load qr_matrix2_1 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~33~~8 run structure load qr_matrix2_2 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~33~~40 run structure load qr_matrix2_3 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~33~~72 run structure load qr_matrix2_4 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~65~~8 run structure load qr_matrix2_5 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~65~~40 run structure load qr_matrix2_6 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~65~~72 run structure load qr_matrix2_7 ~~1~

execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 3 positioned ~1~~40 run structure load qr_matrix3_0 ~~1~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 4 positioned ~1~~52 run structure load qr_matrix4_0 ~~1~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 5 positioned ~1~~52 run structure load qr_matrix5_0 ~~1~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 6 at @e[name=qr_split_set] positioned ~1~~2 run structure load qr_matrix6_0 ~~1~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 7 at @e[name=qr_split_set] positioned ~1~~2 run structure load qr_matrix7_0 ~~1~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 8 at @e[name=qr_split_set] positioned ~1~~2 run structure load qr_matrix8_0 ~~1~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 9 at @e[name=qr_split_set] positioned ~1~~2 run structure load qr_matrix9_0 ~~1~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 10 at @e[name=qr_split_set] positioned ~1~~2 run structure load qr_matrix10_0 ~~1~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 11 at @e[name=qr_split_set] positioned ~1~~2 run structure load qr_matrix11_0 ~~1~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 12 at @e[name=qr_split_set] positioned ~1~~2 run structure load qr_matrix12_0 ~~1~ 0_degrees none false true

execute if score mode qr_uid matches 1..3 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~40 run summon minecraft:armor_stand qr_matrix ~~-0.5~
execute if score mode qr_uid matches 4..5 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~52 run summon minecraft:armor_stand qr_matrix ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~72 run summon minecraft:armor_stand qr_matrix ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~8 run summon minecraft:armor_stand qr_matrix ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~40 run summon minecraft:armor_stand qr_matrix ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~72 run summon minecraft:armor_stand qr_matrix ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~8 run summon minecraft:armor_stand qr_matrix ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~40 run summon minecraft:armor_stand qr_matrix ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~72 run summon minecraft:armor_stand qr_matrix ~~-0.5~
execute if score mode qr_uid matches 6.. as @e[name=qr_main,scores={qr_prg=18}] at @e[name=qr_split_set] positioned ~1~~2 run summon minecraft:armor_stand qr_matrix ~~~


scoreboard players set @e[name=qr_main,scores={qr_prg=18}] qr_prg 19
#
execute if score mode qr_uid matches 1..3 as @e[name=qr_main,scores={qr_prg=19}] run scoreboard players set @e[name=qr_matrix] GF_1 29
execute if score mode qr_uid matches 4..6 as @e[name=qr_main,scores={qr_prg=19}] run scoreboard players set @e[name=qr_matrix] GF_1 41
execute if score mode qr_uid matches 7..9 as @e[name=qr_main,scores={qr_prg=19}] run scoreboard players set @e[name=qr_matrix] GF_1 53
execute if score mode qr_uid matches 10..12 as @e[name=qr_main,scores={qr_prg=19}] run scoreboard players set @e[name=qr_matrix] GF_1 65
execute as @e[name=qr_main,scores={qr_prg=19}] as @e[name=qr_matrix] at @s run function QR_new/matrix
execute as @e[name=qr_main,scores={qr_prg=19}] as @e[name=qr_matrix] at @s run function QR_new/matrix
execute as @e[name=qr_main,scores={qr_prg=19}] as @e[name=qr_matrix] at @s run function QR_new/matrix
execute as @e[name=qr_main,scores={qr_prg=19}] as @e[name=qr_matrix] at @s run function QR_new/matrix
execute as @e[name=qr_main,scores={qr_prg=19}] as @e[name=qr_matrix] at @s run function QR_new/matrix
