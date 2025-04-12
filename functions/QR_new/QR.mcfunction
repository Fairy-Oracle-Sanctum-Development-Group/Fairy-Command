#二维码生成器
###计分板
#qr_prg 总进程
#qr_code 编码状态
#qr_encode 编码
#qr_encode_l 编码长度(1字节)
#qr_encode_lall 编码总长度
#qr_decode 解码
#qr_decode_uid 解码实体uid
#qr_return 接受返回值
#GF_1 对数反对数表
#GF_2 对数反对数表
#qr_xor 异或运算
#qr_split 组运算

scoreboard objectives add qr_prg dummy
scoreboard objectives add qr_code dummy
scoreboard objectives add qr_encode dummy
scoreboard objectives add qr_encode_l dummy
scoreboard objectives add qr_encode_lall dummy
scoreboard objectives add qr_decode dummy
scoreboard objectives add qr_decode_uid dummy
scoreboard objectives add qr_return dummy
scoreboard objectives add GF_1 dummy
scoreboard objectives add GF_2 dummy
scoreboard objectives add qr_xor dummy
scoreboard objectives add qr_split dummy

###开始生成
#初始化
execute unless entity @e[name=qr_main] run setblock ~~2~ minecraft:air
scoreboard players add @e[name=qr_main] qr_prg 0
scoreboard players add @e[name=qr_main] qr_split 0
execute as @e[name=qr_main,scores={qr_prg=0}] positioned ~1~~ run fill ~64~64~6 ~~~ minecraft:air
execute as @e[name=qr_main,scores={qr_prg=0}] positioned ~1~~8 run structure load a ~~~
execute as @e[name=qr_main,scores={qr_prg=0}] run summon minecraft:armor_stand qr_decode_place ~~~2
execute as @e[name=qr_main,scores={qr_prg=0}] run summon minecraft:armor_stand qr_decode ~8~-0.5~
execute as @e[name=qr_main,scores={qr_prg=0}] run scoreboard players set @e[c=1,name=qr_decode] qr_decode_uid -1
execute as @e[name=qr_main,scores={qr_prg=0}] run scoreboard players set time qr_uid 0
#读取版本信息
execute if entity @e[name=qr_main,scores={qr_prg=0}] run function QR_new/version

#生成版本信息
tp @e[name=qr_main,scores={qr_prg=0}] ~5~~
execute if score mode qr_uid matches ..9 run scoreboard players set @e[name=qr_main,scores={qr_prg=0}] qr_encode_lall 12
execute if score mode qr_uid matches 10.. run scoreboard players set @e[name=qr_main,scores={qr_prg=0}] qr_encode_lall 20
execute at @e[name=qr_main,scores={qr_prg=0}] run fill ~-1~~ ~-2~~ minecraft:white_concrete
execute at @e[name=qr_main,scores={qr_prg=0}] run fill ~-3~~ ~-3~~ minecraft:black_concrete
execute at @e[name=qr_main,scores={qr_prg=0}] run fill ~-4~~ ~-4~~ minecraft:white_concrete
#
execute as @e[name=qr_decode_place] at @s run scoreboard players add @s qr_encode_l 1 
execute as @e[name=qr_decode_place] at @s run tp @s ~8~~
execute as @e[name=qr_decode_place] at @s run summon minecraft:armor_stand qr_decode ~~-0.5~

#生成多项式
execute if score mode qr_uid matches 1 run function QR_new/generator_7
execute if score mode qr_uid matches 2 run function QR_new/generator_10
execute if score mode qr_uid matches 3 run function QR_new/generator_15
execute if score mode qr_uid matches 4 run function QR_new/generator_20
execute if score mode qr_uid matches 5 run function QR_new/generator_26
execute if score mode qr_uid matches 6 run function QR_new/generator_18
execute if score mode qr_uid matches 7 run function QR_new/generator_20
execute if score mode qr_uid matches 8 run function QR_new/generator_24
execute if score mode qr_uid matches 9 run function QR_new/generator_30
execute if score mode qr_uid matches 10 run function QR_new/generator_18
execute if score mode qr_uid matches 11 run function QR_new/generator_20
execute if score mode qr_uid matches 12 run function QR_new/generator_24

#分配生成多项式实体分数
execute unless entity @e[scores={qr_decode_uid=0..}] run scoreboard players set uid qr_decode_uid 0
scoreboard players add @e[name=qr_decode] qr_decode_uid 0
execute as @e[c=1,name=qr_decode,scores={qr_decode_uid=0}] run scoreboard players add uid qr_decode_uid 1
execute as @e[c=1,name=qr_decode,scores={qr_decode_uid=0}] run scoreboard players operation @s qr_decode_uid = uid qr_decode_uid

execute as @e[name=qr_decode_place] as @e[name=qr_decode,scores={qr_decode_uid=0..}] run scoreboard players operation @s qr_xor = @s GF_2

execute as @e[name=qr_decode_place] at @s run scoreboard players add @s qr_decode 1
execute as @e[name=qr_decode_place] at @s run scoreboard players operation @s qr_return = @s qr_decode
execute as @e[name=qr_decode_place] at @s run scoreboard players operation @s qr_return %= "8" NUM
execute as @e[name=qr_decode_place,scores={qr_return=0}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place] if score @s qr_decode = @s qr_encode run tellraw @a { "rawtext": [ { "text": "生成多项式生成完毕"}]}
execute as @e[name=qr_decode_place] if score @s qr_decode = @s qr_encode run kill @s

#编码
function QR_new/data_code

#计算纠错码
execute as @e[name=qr_main,scores={qr_prg=8}] run tp @e[name=qr_decode,scores={qr_decode_uid=-1}] ~8~-0.5~
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=-1}] at @s if block ~~~ minecraft:white_concrete [] if block ~-1~~ minecraft:white_concrete [] if block ~-2~~ minecraft:white_concrete [] if block ~-3~~ minecraft:white_concrete [] if block ~-4~~ minecraft:white_concrete [] if block ~-5~~ minecraft:white_concrete [] if block ~-6~~ minecraft:white_concrete [] if block ~-7~~ minecraft:white_concrete [] run scoreboard players set @e[name=qr_main,scores={qr_prg=8}] qr_prg 101

#去除头部空字节
execute as @e[name=qr_main,scores={qr_prg=101}] run summon minecraft:armor_stand qr_sup ~~~
execute as @e[name=qr_main,scores={qr_prg=101}] run scoreboard players add @s GF_1 -8
scoreboard players set @e[name=qr_main,scores={qr_prg=101}] qr_prg 102
#
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup
function QR_new/sup

execute as @e[name=qr_main,scores={qr_prg=8}] run kill @e[name=qr_sup]
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=-1}] at @s if block ~~~ minecraft:white_concrete [] if block ~-1~~ minecraft:white_concrete [] if block ~-2~~ minecraft:white_concrete [] if block ~-3~~ minecraft:white_concrete [] if block ~-4~~ minecraft:white_concrete [] if block ~-5~~ minecraft:white_concrete [] if block ~-6~~ minecraft:white_concrete [] if block ~-7~~ minecraft:white_concrete [] run scoreboard players add @e[name=qr_main,scores={qr_prg=8}] qr_code 1
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=-1}] at @s if block ~~~ minecraft:white_concrete [] if block ~-1~~ minecraft:white_concrete [] if block ~-2~~ minecraft:white_concrete [] if block ~-3~~ minecraft:white_concrete [] if block ~-4~~ minecraft:white_concrete [] if block ~-5~~ minecraft:white_concrete [] if block ~-6~~ minecraft:white_concrete [] if block ~-7~~ minecraft:white_concrete [] run scoreboard players set @e[name=qr_main,scores={qr_prg=8}] qr_prg 101

#
execute as @e[name=qr_main,scores={qr_prg=8}] run kill @e[name=qr_sup]
execute as @e[name=qr_main,scores={qr_prg=8}] run fill ~1~~ ~64~~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 2 run fill ~1~1~ ~24~~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 3 run fill ~1~1~ ~64~~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 4.. run fill ~1~1~ ~64~1~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 4 run fill ~1~2~ ~40~2~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 5 run fill ~1~2~ ~64~2~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 5 run fill ~1~3~ ~24~3~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 6 run fill ~1~2~ ~24~2~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 7 run fill ~1~2~ ~40~2~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 8 run fill ~1~3~ ~8~3~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 9 run fill ~1~3~ ~56~3~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 10 run fill ~1~2~ ~24~2~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 11 run fill ~1~2~ ~40~2~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 12 run fill ~1~3~ ~8~3~ minecraft:white_concrete [] replace minecraft:air []

#
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode] at @s run function QR_new/decode
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=-1}] run scoreboard players operation @s GF_2 = @s qr_decode
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=-1}] run function QR_new/GF_2
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] run scoreboard players operation @s GF_2 += @e[name=qr_decode,scores={qr_decode_uid=-1}] GF_1
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=0..,GF_2=255..}] run scoreboard players operation @s GF_2 %= "255" NUM
#execute as @e[name=qr_main,scores={qr_prg=8}] run tellraw @a { "rawtext": [ { "score": {"name": "@e[name=qr_decode,scores={qr_decode_uid=1}]", "objective": "GF_2" } },{ "text": "," },{ "score": {"name": "@e[name=qr_decode,scores={qr_decode_uid=2}]", "objective": "GF_2" } }] }
scoreboard players set @e[name=qr_main,scores={qr_prg=8}] qr_prg 9

#
execute as @e[name=qr_main,scores={qr_prg=9}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] run scoreboard players operation @s GF_1 = @s GF_2
execute as @e[name=qr_main,scores={qr_prg=9}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] run function QR_new/GF_1
execute as @e[name=qr_main,scores={qr_prg=9}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] at @s run summon minecraft:armor_stand qr_encode_sub ~~~
execute as @e[name=qr_main,scores={qr_prg=9}] run scoreboard players add @e[name=qr_encode_sub] qr_encode 0
execute as @e[name=qr_main,scores={qr_prg=9}] run scoreboard players set @e[name=qr_encode_sub] qr_encode_l 8
execute as @e[name=qr_main,scores={qr_prg=9}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] at @s run scoreboard players operation @e[c=1,r=2,name=qr_encode_sub,scores={qr_encode=0}] qr_encode = @s GF_2
scoreboard players set @e[name=qr_main,scores={qr_prg=9}] qr_prg 10
execute if entity @e[name=qr_encode_sub] run function QR_new/encode_sub
execute if entity @e[name=qr_encode_sub] run function QR_new/encode_sub
execute if entity @e[name=qr_encode_sub] run function QR_new/encode_sub
execute if entity @e[name=qr_encode_sub] run function QR_new/encode_sub
execute if entity @e[name=qr_encode_sub] run function QR_new/encode_sub
execute if entity @e[name=qr_encode_sub] run function QR_new/encode_sub
execute if entity @e[name=qr_encode_sub] run function QR_new/encode_sub
execute if entity @e[name=qr_encode_sub] run function QR_new/encode_sub
#tellraw @a { "rawtext": [ { "score": {"name": "@e[name=qr_main]", "objective": "qr_prg" } } ] }

#
execute as @e[name=qr_main,scores={qr_prg=11}] run summon minecraft:armor_stand qr_xor ~1~~4
execute as @e[name=qr_main,scores={qr_prg=11}] run summon minecraft:armor_stand qr_xor_1 ~2~~4
execute as @e[name=qr_main,scores={qr_prg=11}] run summon minecraft:armor_stand qr_xor_1 ~0~~4
execute as @e[name=qr_main,scores={qr_prg=11}] as @e[name=qr_xor] at @s run tp @s ~~~ facing ~1~~
execute as @e[name=qr_main,scores={qr_prg=11}] as @e[name=qr_xor_1] at @s run tp @s ~~~ facing @e[name=qr_xor]
execute as @e[name=qr_main,scores={qr_prg=11}] run fill ~1~~4 ~64~20~4 minecraft:air
scoreboard players set @e[name=qr_main,scores={qr_prg=11}] qr_prg 12

#异或运算
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor
function QR_new/xor

#
execute as @e[name=qr_main,scores={qr_prg=13}] run kill @e[name=qr_xor]
execute as @e[name=qr_main,scores={qr_prg=13}] run kill @e[name=qr_xor_1]
execute as @e[name=qr_main,scores={qr_prg=13}] run structure save qr_5 ~64~20~ ~1~~ 
execute as @e[name=qr_main,scores={qr_prg=13}] run structure save qr_2 ~64~20~4 ~1~~4 
execute as @e[name=qr_main,scores={qr_prg=13}] run structure load qr_5 ~1~~4 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=13}] run structure load qr_2 ~1~~ 0_degrees none false true
scoreboard players set @e[name=qr_main,scores={qr_prg=13}] qr_prg 14
#
execute as @e[name=qr_main,scores={qr_prg=14}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] run scoreboard players operation @s GF_2 = @s qr_xor
execute as @e[name=qr_main,scores={qr_prg=14}] run scoreboard players add @s qr_code 1
execute as @e[name=qr_main,scores={qr_prg=14}] run titleraw @a actionbar { "rawtext": [ { "text": "正在计算纠错码: "},{ "score": {"name": "@s", "objective": "qr_code" } },{"text":"/" },{ "score": {"name": "@s", "objective": "qr_xor" } } ] }
execute as @e[name=qr_main,scores={qr_prg=14}] unless score @s qr_code = @s qr_xor run scoreboard players set @s qr_prg 8
execute as @e[name=qr_main,scores={qr_prg=14}] if score @s qr_code = @s qr_xor run tellraw @a { "rawtext": [ { "text": "纠错码计算完成"}]}
execute as @e[name=qr_main,scores={qr_prg=14}] if score @s qr_code = @s qr_xor run scoreboard players set @s qr_prg 15
#
execute as @e[name=qr_main,scores={qr_prg=15}] as @e[name=qr_decode,scores={qr_decode_uid=-1}] at @s if block ~~~ minecraft:white_concrete [] if block ~-1~~ minecraft:white_concrete [] if block ~-2~~ minecraft:white_concrete [] if block ~-3~~ minecraft:white_concrete [] if block ~-4~~ minecraft:white_concrete [] if block ~-5~~ minecraft:white_concrete [] if block ~-6~~ minecraft:white_concrete [] if block ~-7~~ minecraft:white_concrete [] run scoreboard players set @e[name=qr_main,scores={qr_prg=15}] qr_prg 103

execute as @e[name=qr_main,scores={qr_prg=103}] run summon minecraft:armor_stand qr_sup ~~~
execute as @e[name=qr_main,scores={qr_prg=103}] run scoreboard players add @s GF_1 -8
scoreboard players set @e[name=qr_main,scores={qr_prg=103}] qr_prg 104

#
execute as @e[name=qr_main,scores={qr_prg=104}] as @e[name=qr_sup] at @s run structure save qr_sup ~9~~ ~64~~ 
execute as @e[name=qr_main,scores={qr_prg=104}] as @e[name=qr_sup] at @s run structure load qr_sup ~1~~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=104}] as @e[name=qr_sup] at @s run structure save qr_sup ~1~1~ ~8~1~ 
execute as @e[name=qr_main,scores={qr_prg=104}] as @e[name=qr_sup] at @s run structure load qr_sup ~57~~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=104}] as @e[name=qr_sup] at @s run tp @s ~~1~
execute as @e[name=qr_main,scores={qr_prg=104}] as @e[name=qr_sup] at @s if block ~1~1~ minecraft:air [] run structure save qr_sup ~9~~ ~64~~
execute as @e[name=qr_main,scores={qr_prg=104}] as @e[name=qr_sup] at @s if block ~1~1~ minecraft:air [] run structure load qr_sup ~1~~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=104}] as @e[name=qr_sup] at @s if block ~1~1~ minecraft:air [] run fill ~57~~ ~64~~ minecraft:air
execute as @e[name=qr_main,scores={qr_prg=104}] as @e[name=qr_sup] at @s if block ~1~1~ minecraft:air [] run scoreboard players set @e[name=qr_main,scores={qr_prg=104}] qr_prg 15

#
execute as @e[name=qr_main,scores={qr_prg=15}] run kill @e[name=qr_sup]
execute as @e[name=qr_main,scores={qr_prg=15}] run tp @s ~~0.5~
execute if score mode qr_uid matches 6.. run scoreboard players set @e[name=qr_main,scores={qr_prg=15}] qr_prg 109
execute if score mode qr_uid matches ..5 run scoreboard players set @e[name=qr_main,scores={qr_prg=15}] qr_prg 16
#填充
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 1 run structure load qr_mode_1 ~1~~8 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 2 run structure load qr_mode_2 ~1~~8 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 3 run structure load qr_mode_3 ~1~~8 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 4 run structure load qr_mode_4 ~1~~8 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 5 run structure load qr_mode_5 ~1~~8 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 6 at @e[name=qr_split_set] run structure load qr_mode_6 ~1~~2 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 7 at @e[name=qr_split_set] run structure load qr_mode_7 ~1~~2 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 8 at @e[name=qr_split_set] run structure load qr_mode_8 ~1~~2 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 9 at @e[name=qr_split_set] run structure load qr_mode_9 ~1~~2 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 10 at @e[name=qr_split_set] run structure load qr_mode_10 ~1~~2 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 11 at @e[name=qr_split_set] run structure load qr_mode_11 ~1~~2 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 12 at @e[name=qr_split_set] run structure load qr_mode_12 ~1~~2 0_degrees none false true
#execute as @e[name=qr_main,scores={qr_prg=16}] run tellraw @a { "rawtext": [ { "text": "二维码框架已生成\n开始填充"}]}
execute as @e[name=qr_main,scores={qr_prg=16}] unless entity @e[name=qr_read] run summon minecraft:armor_stand qr_read ~1~~6
execute as @e[name=qr_main,scores={qr_prg=16}] at @e[name=qr_split_sub] positioned ~1~~ run tp @e[name=qr_read] ~~~
execute as @e[name=qr_main,scores={qr_prg=16}] run scoreboard players operation @e[name=qr_read] qr_split = @e[name=qr_main] qr_split
execute as @e[name=qr_main,scores={qr_prg=16}] run setblock ~~2~ minecraft:redstone_block

#
execute as @e[name=qr_main,scores={qr_prg=109}] run scoreboard players add @e[name=qr_split_sub] qr_code -1
execute as @e[name=qr_main,scores={qr_prg=109}] if entity @e[name=qr_split_sub,scores={qr_code=0}] run tellraw @a { "rawtext": [ { "text": "纠错码已全部计算完毕"}]}
execute as @e[name=qr_main,scores={qr_prg=109}] run structure save qr_error ~64~64~ ~1~~
execute as @e[name=qr_main,scores={qr_prg=109}] as @e[name=qr_split_set] at @s run structure load qr_error ~1~~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=109}] if entity @e[name=qr_split_sub,scores={qr_code=..0}] run scoreboard players set @s qr_prg 16

#
execute as @e[name=qr_main,scores={qr_prg=109}] if entity @e[name=qr_split_sub,scores={qr_code=..2}] if score mode qr_uid matches 10 run scoreboard players set @e[name=qr_main] qr_xor 68
execute as @e[name=qr_main,scores={qr_prg=109}] if entity @e[name=qr_split_sub,scores={qr_code=..2}] if score mode qr_uid matches 12 run scoreboard players set @e[name=qr_main] qr_xor 92

#
execute as @e[name=qr_main,scores={qr_prg=109}] run tellraw @a { "rawtext": [ { "text": "剩余待计算纠错码块数: "},{ "score": {"name": "@e[name=qr_split_sub]", "objective": "qr_code" } }]}
execute as @e[name=qr_main,scores={qr_prg=109}] as @e[name=qr_split_set] at @s run tp @s ~~~2
execute as @e[name=qr_main,scores={qr_prg=109}] as @e[name=qr_split_sub] at @s run tp @s ~~~-2
execute as @e[name=qr_main,scores={qr_prg=109}] as @e[name=qr_split_sub] at @s run structure save qr_split ~64~64~ ~1~~
execute as @e[name=qr_main,scores={qr_prg=109}] run structure load qr_split ~1~~ 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=109}] run fill ~64~64~2 ~1~~2 minecraft:air
execute as @e[name=qr_main,scores={qr_prg=109}] as @e[name=qr_decode] run scoreboard players operation @s GF_2 = @s qr_split
execute as @e[name=qr_main,scores={qr_prg=109}] run scoreboard players set @s qr_code 0
execute as @e[name=qr_main,scores={qr_prg=109}] run scoreboard players set @s qr_prg 8

#titleraw @a actionbar { "rawtext": [ { "text": "qr_split_sub: "},{ "score": {"name": "@e[name=qr_split_sub]", "objective": "qr_code" } }]}
#By Baby_2016