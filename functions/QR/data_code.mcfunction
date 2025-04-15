#对输入内容编码
execute as @e[name=qr_main,scores={qr_prg=0}] run scoreboard players operation @s qr_encode = uid qr_uid
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches ..9 run scoreboard players set @s qr_encode_l 8
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches ..9 at @s run tp @s ~7~~
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 10.. run scoreboard players set @s qr_encode_l 16
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 10.. at @s run tp @s ~15~~
execute as @e[name=qr_main,scores={qr_prg=0}] at @s run summon minecraft:armor_stand qr_encode_back ~1~~
execute as @e[name=qr_main,scores={qr_prg=0}] at @s run scoreboard players set uid qr_uid 1
scoreboard players set @e[name=qr_main,scores={qr_prg=0}] qr_prg 1
execute as @e[name=qr_main,scores={qr_prg=1}] at @s run function QR/encode
#
execute as @e[name=qr_main,scores={qr_prg=2}] as @e[type=minecraft:armor_stand,scores={qr_uid=1..}] if score @s qr_uid = uid qr_uid run scoreboard players operation @e[name=qr_main,scores={qr_prg=2}] qr_encode = @s qr_encode
execute as @e[name=qr_main,scores={qr_prg=2}] run scoreboard players set @s qr_encode_l 8 
execute as @e[name=qr_main,scores={qr_prg=2}] at @s run tp @s ~7~~
execute as @e[name=qr_main,scores={qr_prg=2}] at @s run summon minecraft:armor_stand qr_encode_back ~1~~
execute as @e[name=qr_main,scores={qr_prg=2}] unless entity @e[name=qr_main_sub] run summon minecraft:armor_stand qr_main_sub ~1~~
scoreboard players set @e[name=qr_main,scores={qr_prg=2}] qr_prg 3
execute as @e[name=qr_main,scores={qr_prg=3}] at @s run function QR/encode

##function QR/encode_return
execute as @e[name=qr_main,scores={qr_prg=4}] at @s run scoreboard players operation @s qr_return = @s qr_encode_lall
execute as @e[name=qr_main,scores={qr_prg=4}] at @s run scoreboard players add @s qr_return -4
execute as @e[name=qr_main,scores={qr_prg=4}] at @s run scoreboard players operation @s qr_return %= "64" NUM
execute as @e[name=qr_main,scores={qr_return=0,qr_prg=4}] as @e[name=qr_main_sub] at @s run tp @s ~~1~
execute as @e[name=qr_main,scores={qr_return=0,qr_prg=4}] at @s run structure save qr_encode_p ~-1~~ ~-4~~
execute as @e[name=qr_main,scores={qr_return=0,qr_prg=4}] at @s run fill ~-1~~ ~-4~~ minecraft:air
execute as @e[name=qr_main,scores={qr_return=0,qr_prg=4}] run tp @s @e[name=qr_main_sub]
execute as @e[name=qr_main,scores={qr_return=0,qr_prg=4}] at @s run tp @s ~4~~
execute as @e[name=qr_main,scores={qr_return=0,qr_prg=4}] at @s run structure load qr_encode_p ~-4~~ 0_degrees none false true

#
execute as @e[name=qr_main,scores={qr_prg=4}] if score uid qr_uid matches 1.. as @e[type=minecraft:armor_stand,scores={qr_uid=1..}] if score @s qr_uid = uid qr_uid run kill @s
execute unless entity @e[scores={qr_uid=0..}] run scoreboard players set uid qr_uid 0
execute as @e[name=qr_main,scores={qr_prg=4}] if score uid qr_uid matches 1.. run scoreboard players add uid qr_uid 1
execute as @e[name=qr_main,scores={qr_prg=4}] if score uid qr_uid matches ..0 run scoreboard players set @s qr_prg 5 
execute as @e[name=qr_main,scores={qr_prg=4}] if score uid qr_uid matches 1.. run scoreboard players set @s qr_prg 2
#
execute as @e[name=qr_main,scores={qr_prg=5}] run scoreboard players operation @s qr_encode = @s qr_encode_lall
execute as @e[name=qr_main,scores={qr_prg=5}] run scoreboard players operation @s qr_encode %= "8" NUM
execute as @e[name=qr_main,scores={qr_prg=5}] at @s[scores={qr_encode=4}] run fill ~3~~ ~~~ minecraft:white_concrete
execute as @e[name=qr_main,scores={qr_prg=5}] at @s[scores={qr_encode=4}] run tp @s ~4~~
execute as @e[name=qr_main,scores={qr_prg=5}] at @s[scores={qr_encode=4}] run scoreboard players add @s qr_encode_lall 4

execute as @e[name=qr_main,scores={qr_prg=5..6}] at @s run scoreboard players operation @s qr_return = @s qr_encode_lall
execute as @e[name=qr_main,scores={qr_prg=5..6}] at @s run scoreboard players operation @s qr_return %= "64" NUM
execute as @e[name=qr_main,scores={qr_return=0,qr_prg=5..6}] as @e[name=qr_main_sub] at @s run tp @s ~~1~
execute as @e[name=qr_main,scores={qr_return=0,qr_prg=5..6}] run tp @s @e[name=qr_main_sub]
scoreboard players set @e[name=qr_main,scores={qr_prg=5}] qr_prg 6

#
execute as @e[name=qr_main,scores={qr_prg=6}] run scoreboard players operation @s qr_encode = @s qr_encode_lall
execute as @e[name=qr_main,scores={qr_prg=6}] run scoreboard players operation @s qr_encode /= "8" NUM
execute as @e[name=qr_main,scores={qr_prg=6}] run scoreboard players operation @s qr_encode *= "-1" NUM
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 1 run scoreboard players add @s qr_encode 19
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 2 run scoreboard players add @s qr_encode 34
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 3 run scoreboard players add @s qr_encode 55
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 4 run scoreboard players add @s qr_encode 80
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 5 run scoreboard players add @s qr_encode 108
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 6 run scoreboard players add @s qr_encode 136
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 7 run scoreboard players add @s qr_encode 156
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 8 run scoreboard players add @s qr_encode 194
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 9 run scoreboard players add @s qr_encode 232
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 10 run scoreboard players add @s qr_encode 274
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 11 run scoreboard players add @s qr_encode 324
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 12 run scoreboard players add @s qr_encode 270
execute as @e[name=qr_main,scores={qr_prg=6}] if score mode qr_uid matches 40 run scoreboard players add @s qr_encode 2956
scoreboard players set @e[name=qr_main,scores={qr_prg=6}] qr_prg 7

#补全码
function QR/pad
function QR/pad
function QR/pad
function QR/pad
function QR/pad

###版本6以上特殊处理
#分割数据码
execute as @e[name=qr_main,scores={qr_prg=105}] run tellraw @a { "rawtext": [ { "text": "编码完毕\n开始分割数据码"}]}
execute as @e[name=qr_main,scores={qr_prg=105}] run fill ~64~64~ ~1~~ minecraft:air
execute as @e[name=qr_main,scores={qr_prg=105}] run summon minecraft:armor_stand qr_split ~~~6
execute as @e[name=qr_main,scores={qr_prg=105}] run summon minecraft:armor_stand qr_split_sub ~~~8
execute as @e[name=qr_main,scores={qr_prg=105}] run summon minecraft:armor_stand qr_split_set ~~~8
execute as @e[name=qr_main,scores={qr_prg=105}] run scoreboard players operation @e[name=qr_split] qr_code = @s qr_split
execute as @e[name=qr_main,scores={qr_prg=105}] run scoreboard players set @s qr_prg 106
#
execute as @e[name=qr_main,scores={qr_prg=106}] if entity @e[name=qr_split,scores={qr_code=..0}] as @e[name=qr_decode] run scoreboard players operation @s qr_split = @s GF_2
execute as @e[name=qr_main,scores={qr_prg=106}] if entity @e[name=qr_split,scores={qr_code=..0}] run tellraw @a { "rawtext": [ { "text": "数据码分割完毕\n开始分块计算纠错码,生成多项式已备份"}]}
execute as @e[name=qr_main,scores={qr_prg=106}] if entity @e[name=qr_split,scores={qr_code=..0}] run scoreboard players set @e[name=qr_main] qr_prg 108
execute as @e[name=qr_main,scores={qr_prg=106}] as @e[name=qr_split,scores={qr_code=1..}] run function QR/split_config
execute as @e[name=qr_main,scores={qr_prg=106}] run tellraw @a { "rawtext": [ { "text": "剩余待分割块数: "},{ "score": {"name": "@e[name=qr_split]", "objective": "qr_code" } }]} 
execute as @e[name=qr_main,scores={qr_prg=106}] as @e[name=qr_split,scores={qr_code=1..}] run scoreboard players set @s qr_encode 0
execute as @e[name=qr_main,scores={qr_prg=106}] as @e[name=qr_split,scores={qr_code=1..}] run scoreboard players add @s qr_code -1
execute as @e[name=qr_main,scores={qr_prg=106}] as @e[name=qr_split,scores={qr_code=0}] run scoreboard players set @e[name=qr_main] qr_code 0 
execute as @e[name=qr_main,scores={qr_prg=106}] run scoreboard players set @s qr_prg 107
#
execute if entity @e[name=qr_main,scores={qr_prg=107}] as @e[name=qr_split] at @s run function QR/split
execute if entity @e[name=qr_main,scores={qr_prg=107}] as @e[name=qr_split] at @s run function QR/split
execute if entity @e[name=qr_main,scores={qr_prg=107}] as @e[name=qr_split] at @s run function QR/split
execute if entity @e[name=qr_main,scores={qr_prg=107}] as @e[name=qr_split] at @s run function QR/split
execute if entity @e[name=qr_main,scores={qr_prg=107}] as @e[name=qr_split] at @s run function QR/split

#纠错码部分
execute as @e[name=qr_main,scores={qr_prg=108}] run tp @e[name=qr_split] @e[name=qr_split_sub]
#execute as @e[name=qr_main,scores={qr_prg=108}] run kill @e[name=qr_split]
execute as @e[name=qr_main,scores={qr_prg=108}] run tp @e[name=qr_split_set] @e[name=qr_split_sub]
execute as @e[name=qr_main,scores={qr_prg=108}] as @e[name=qr_split_sub] at @s run tp @s ~~~-2
execute as @e[name=qr_main,scores={qr_prg=108}] as @e[name=qr_split_sub] run scoreboard players operation @s qr_code = @e[name=qr_main] qr_split
#execute as @e[name=qr_main,scores={qr_prg=108}] as @e[name=qr_split_sub] run scoreboard players add @s qr_code -1
execute as @e[name=qr_main,scores={qr_prg=108}] as @e[name=qr_split_sub] at @s run structure save qr_split ~64~64~ ~1~~
execute as @e[name=qr_main,scores={qr_prg=108}] run structure load qr_split ~1~~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=108}] run scoreboard players set @s qr_prg 8
