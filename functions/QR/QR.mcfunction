#
scoreboard objectives add qr_prg dummy
scoreboard objectives add qr_code dummy
scoreboard objectives add qr_encode dummy
scoreboard objectives add qr_encode_l dummy
scoreboard objectives add qr_encode_lall dummy
scoreboard objectives add qr_decode dummy
scoreboard objectives add qr_decode_uid dummy
scoreboard objectives add GF_1 dummy
scoreboard objectives add GF_2 dummy
scoreboard objectives add qr_xor dummy

#
scoreboard players add @e[name=qr_main] qr_prg 0
tp @e[name=qr_main,scores={qr_prg=0}] ~5~~
execute as @e[name=qr_main,scores={qr_prg=0}] positioned ~1~~ run fill ~64~20~6 ~~~ minecraft:air
execute as @e[name=qr_main,scores={qr_prg=0}] positioned ~1~~8 run fill ~64~2~64 ~~~ minecraft:air
execute as @e[name=qr_main,scores={qr_prg=0}] run summon minecraft:armor_stand qr_decode_place ~~~2
execute as @e[name=qr_main,scores={qr_prg=0}] run summon minecraft:armor_stand qr_decode ~8~-0.5~
execute as @e[name=qr_main,scores={qr_prg=0}] run scoreboard players set @e[c=1,name=qr_decode] qr_decode_uid -1
execute as @e[name=qr_main,scores={qr_prg=0}] run scoreboard players set time qr_uid 0

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 1 run scoreboard players set @e[name=qr_decode_place] qr_encode 8
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 1 run scoreboard players set @s qr_xor 19
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 1 run scoreboard players set @s GF_1 152
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 1 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 1,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n开始生成生成多项式(7位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 2 run scoreboard players set @e[name=qr_decode_place] qr_encode 11
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 2 run scoreboard players set @s qr_xor 34
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 2 run scoreboard players set @s GF_1 272
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 2 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 2,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n开始生成生成多项式(10位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 3 run scoreboard players set @e[name=qr_decode_place] qr_encode 16
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 3 run scoreboard players set @s qr_xor 55
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 3 run scoreboard players set @s GF_1 440
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 3 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 3,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n开始生成生成多项式(15位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 4 run scoreboard players set @e[name=qr_decode_place] qr_encode 21
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 4 run scoreboard players set @s qr_xor 80
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 4 run scoreboard players set @s GF_1 640
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 4 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 4,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n开始生成生成多项式(20位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 5 run scoreboard players set @e[name=qr_decode_place] qr_encode 27
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 5 run scoreboard players set @s qr_xor 108
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 5 run scoreboard players set @s GF_1 864
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 5 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 5,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n开始生成生成多项式(26位纠错码)\n开始编码" } ] }

scoreboard players set @e[name=qr_main,scores={qr_prg=0}] qr_encode_lall 12
execute at @e[name=qr_main,scores={qr_prg=0}] run fill ~-1~~ ~-2~~ minecraft:white_concrete
execute at @e[name=qr_main,scores={qr_prg=0}] run fill ~-3~~ ~-3~~ minecraft:black_concrete
execute at @e[name=qr_main,scores={qr_prg=0}] run fill ~-4~~ ~-4~~ minecraft:white_concrete
#
execute as @e[name=qr_decode_place] at @s run scoreboard players add @s qr_encode_l 1 
execute as @e[name=qr_decode_place] at @s run tp @s ~8~~
execute as @e[name=qr_decode_place] at @s run summon minecraft:armor_stand qr_decode ~~-0.5~
#

execute if score mode qr_uid matches 1 run function QR/generator_7
execute if score mode qr_uid matches 2 run function QR/generator_10
execute if score mode qr_uid matches 3 run function QR/generator_15
execute if score mode qr_uid matches 4 run function QR/generator_20
execute if score mode qr_uid matches 5 run function QR/generator_26

#
execute unless entity @e[scores={qr_decode_uid=0..}] run scoreboard players set uid qr_decode_uid 0
scoreboard players add @e[name=qr_decode] qr_decode_uid 0
execute as @e[c=1,name=qr_decode,scores={qr_decode_uid=0}] run scoreboard players add uid qr_decode_uid 1
execute as @e[c=1,name=qr_decode,scores={qr_decode_uid=0}] run scoreboard players operation @s qr_decode_uid = uid qr_decode_uid

execute as @e[name=qr_decode_place] as @e[name=qr_decode,scores={qr_decode_uid=0..}] run scoreboard players operation @s qr_xor = @s GF_2

execute as @e[name=qr_decode_place] at @s run scoreboard players add @s qr_decode 1
execute as @e[name=qr_decode_place,scores={qr_decode=8}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=16}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=24}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=32}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=40}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=48}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=56}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=64}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=72}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=80}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=88}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=96}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=104}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=112}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=120}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place,scores={qr_decode=128}] at @s run tp @s ~-64~1~
execute as @e[name=qr_decode_place] if score @s qr_decode = @s qr_encode run kill @s
execute as @e[name=qr_decode_place] if score @s qr_decode = @s qr_encode run tellraw @a { "rawtext": [ { "text": "生成多项式生成完毕"}]}
#
execute as @e[name=qr_main,scores={qr_prg=0}] run scoreboard players operation @s qr_encode = uid qr_uid
execute as @e[name=qr_main,scores={qr_prg=0}] run scoreboard players set @s qr_encode_l 8
execute as @e[name=qr_main,scores={qr_prg=0}] at @s run tp @s ~7~~
execute as @e[name=qr_main,scores={qr_prg=0}] at @s run summon minecraft:armor_stand qr_encode_back ~1~~
execute as @e[name=qr_main,scores={qr_prg=0}] at @s run scoreboard players set uid qr_uid 1
scoreboard players set @e[name=qr_main,scores={qr_prg=0}] qr_prg 1
execute as @e[name=qr_main,scores={qr_prg=1}] at @s run function QR/encode
#
execute as @e[name=qr_main,scores={qr_prg=2}] as @e[type=minecraft:armor_stand,scores={qr_uid=1..}] if score @s qr_uid = uid qr_uid run scoreboard players operation @e[name=qr_main,scores={qr_prg=2}] qr_encode = @s qr_encode
execute as @e[name=qr_main,scores={qr_prg=2}] run scoreboard players set @s qr_encode_l 8 
execute as @e[name=qr_main,scores={qr_prg=2}] at @s run tp @s ~7~~
execute as @e[name=qr_main,scores={qr_prg=2}] at @s run summon minecraft:armor_stand qr_encode_back ~1~~
scoreboard players set @e[name=qr_main,scores={qr_prg=2}] qr_prg 3
execute as @e[name=qr_main,scores={qr_prg=3}] at @s run function QR/encode
#

function QR/encode_return

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
tp @e[name=qr_main,scores={qr_encode_lall=64,qr_prg=5..}] ~1~1~
tp @e[name=qr_main,scores={qr_encode_lall=128,qr_prg=5..}] ~1~2~
tp @e[name=qr_main,scores={qr_encode_lall=192,qr_prg=5..}] ~1~3~
tp @e[name=qr_main,scores={qr_encode_lall=256,qr_prg=5..}] ~1~4~
tp @e[name=qr_main,scores={qr_encode_lall=320,qr_prg=5..}] ~1~5~
tp @e[name=qr_main,scores={qr_encode_lall=384,qr_prg=5..}] ~1~6~
tp @e[name=qr_main,scores={qr_encode_lall=448,qr_prg=5..}] ~1~7~
tp @e[name=qr_main,scores={qr_encode_lall=512,qr_prg=5..}] ~1~8~
tp @e[name=qr_main,scores={qr_encode_lall=576,qr_prg=5..}] ~1~9~
tp @e[name=qr_main,scores={qr_encode_lall=640,qr_prg=5..}] ~1~10~
tp @e[name=qr_main,scores={qr_encode_lall=704,qr_prg=5..}] ~1~11~
tp @e[name=qr_main,scores={qr_encode_lall=768,qr_prg=5..}] ~1~12~
tp @e[name=qr_main,scores={qr_encode_lall=832,qr_prg=5..}] ~1~13~
tp @e[name=qr_main,scores={qr_encode_lall=896,qr_prg=5..}] ~1~14~
tp @e[name=qr_main,scores={qr_encode_lall=960,qr_prg=5..}] ~1~15~
tp @e[name=qr_main,scores={qr_encode_lall=1024,qr_prg=5..}] ~1~16~
tp @e[name=qr_main,scores={qr_encode_lall=1088,qr_prg=5..}] ~1~17~
tp @e[name=qr_main,scores={qr_encode_lall=1152,qr_prg=5..}] ~1~18~
tp @e[name=qr_main,scores={qr_encode_lall=1216,qr_prg=5..}] ~1~19~
tp @e[name=qr_main,scores={qr_encode_lall=1280,qr_prg=5..}] ~1~20~
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
scoreboard players set @e[name=qr_main,scores={qr_prg=6}] qr_prg 7
#
scoreboard players set @e[name=qr_main,scores={qr_prg=7,qr_encode=0}] qr_code 0
execute as @e[name=qr_main,scores={qr_prg=7,qr_encode=0}] run tellraw @a { "rawtext": [ { "text": "编码完毕\n开始计算纠错码"}]}
scoreboard players set @e[name=qr_main,scores={qr_prg=7,qr_encode=0}] qr_prg 8
execute as @e[name=qr_main,scores={qr_prg=7}] run scoreboard players add @s qr_code 1
execute as @e[name=qr_main,scores={qr_prg=7}] run scoreboard players set @s[scores={qr_code=3}] qr_code 1
execute as @e[name=qr_main,scores={qr_prg=7,qr_code=1}] at @s run fill ~2~~ ~~~ minecraft:black_concrete
execute as @e[name=qr_main,scores={qr_prg=7,qr_code=1}] at @s run fill ~4~~ ~5~~ minecraft:black_concrete
execute as @e[name=qr_main,scores={qr_prg=7,qr_code=1}] at @s run fill ~3~~ ~3~~ minecraft:white_concrete
execute as @e[name=qr_main,scores={qr_prg=7,qr_code=1}] at @s run fill ~6~~ ~7~~ minecraft:white_concrete

execute as @e[name=qr_main,scores={qr_prg=7,qr_code=2}] at @s run fill ~3~~ ~3~~ minecraft:black_concrete
execute as @e[name=qr_main,scores={qr_prg=7,qr_code=2}] at @s run fill ~7~~ ~7~~ minecraft:black_concrete
execute as @e[name=qr_main,scores={qr_prg=7,qr_code=2}] at @s run fill ~2~~ ~~~ minecraft:white_concrete
execute as @e[name=qr_main,scores={qr_prg=7,qr_code=2}] at @s run fill ~4~~ ~6~~ minecraft:white_concrete
execute as @e[name=qr_main,scores={qr_prg=7}] run scoreboard players add @s qr_encode -1
execute as @e[name=qr_main,scores={qr_prg=7}] run scoreboard players add @s qr_encode_lall 8
execute as @e[name=qr_main,scores={qr_prg=7}] at @s run tp @s ~8~~
#纠错码
execute as @e[name=qr_main,scores={qr_prg=8}] run tp @e[name=qr_decode,scores={qr_decode_uid=-1}] ~8~-0.5~
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=-1}] at @s if block ~~~ minecraft:white_concrete [] if block ~-1~~ minecraft:white_concrete [] if block ~-2~~ minecraft:white_concrete [] if block ~-3~~ minecraft:white_concrete [] if block ~-4~~ minecraft:white_concrete [] if block ~-5~~ minecraft:white_concrete [] if block ~-6~~ minecraft:white_concrete [] if block ~-7~~ minecraft:white_concrete [] run scoreboard players set @e[name=qr_main,scores={qr_prg=8}] qr_prg 101

execute as @e[name=qr_main,scores={qr_prg=101}] run summon minecraft:armor_stand qr_sup_a ~1~~
execute as @e[name=qr_main,scores={qr_prg=101}] run summon minecraft:armor_stand qr_sup_b ~9~~
execute as @e[name=qr_main,scores={qr_prg=101}] run scoreboard players add @s GF_1 -8
execute as @e[name=qr_main,scores={qr_prg=101}] if score mode qr_uid matches 1 run scoreboard players set @s[scores={GF_1=..64}] GF_1 64
execute as @e[name=qr_main,scores={qr_prg=101}] if score mode qr_uid matches 2 run scoreboard players set @s[scores={GF_1=..88}] GF_1 88
execute as @e[name=qr_main,scores={qr_prg=101}] if score mode qr_uid matches 3 run scoreboard players set @s[scores={GF_1=..128}] GF_1 128
execute as @e[name=qr_main,scores={qr_prg=101}] if score mode qr_uid matches 4 run scoreboard players set @s[scores={GF_1=..168}] GF_1 168
execute as @e[name=qr_main,scores={qr_prg=101}] if score mode qr_uid matches 5 run scoreboard players set @s[scores={GF_1=..216}] GF_1 216
scoreboard players set @e[name=qr_main,scores={qr_prg=101}] qr_prg 102

execute as @e[name=qr_main,scores={qr_prg=102}] run function QR/sup
execute as @e[name=qr_main,scores={qr_prg=102}] run function QR/sup
execute as @e[name=qr_main,scores={qr_prg=102}] run function QR/sup
execute as @e[name=qr_main,scores={qr_prg=102}] run function QR/sup
execute as @e[name=qr_main,scores={qr_prg=102}] run function QR/sup
execute as @e[name=qr_main,scores={qr_prg=102}] run function QR/sup
execute as @e[name=qr_main,scores={qr_prg=102}] run function QR/sup
execute as @e[name=qr_main,scores={qr_prg=102}] run function QR/sup
execute as @e[name=qr_main,scores={qr_prg=102}] run function QR/sup
execute as @e[name=qr_main,scores={qr_prg=102}] run function QR/sup

execute as @e[name=qr_main,scores={qr_prg=8}] run fill ~1~~ ~64~~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 2 run fill ~1~1~ ~24~~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 3 run fill ~1~1~ ~64~~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 4.. run fill ~1~1~ ~64~1~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 4 run fill ~1~2~ ~40~2~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 5.. run fill ~1~2~ ~64~2~ minecraft:white_concrete [] replace minecraft:air []
execute as @e[name=qr_main,scores={qr_prg=8}] if score mode qr_uid matches 5 run fill ~1~3~ ~24~3~ minecraft:white_concrete [] replace minecraft:air []

execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode] at @s run function QR/decode
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=-1}] run scoreboard players operation @s GF_2 = @s qr_decode
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=-1}] run function QR/GF_2
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] run scoreboard players operation @s GF_2 += @e[name=qr_decode,scores={qr_decode_uid=-1}] GF_1
execute as @e[name=qr_main,scores={qr_prg=8}] as @e[name=qr_decode,scores={qr_decode_uid=0..,GF_2=255..}] run scoreboard players operation @s GF_2 %= "255" NUM
scoreboard players set @e[name=qr_main,scores={qr_prg=8}] qr_prg 9
#
execute as @e[name=qr_main,scores={qr_prg=9}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] run scoreboard players operation @s GF_1 = @s GF_2
execute as @e[name=qr_main,scores={qr_prg=9}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] run function QR/GF_1
execute as @e[name=qr_main,scores={qr_prg=9}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] at @s run summon minecraft:armor_stand qr_encode_sub ~~~
execute as @e[name=qr_main,scores={qr_prg=9}] run scoreboard players add @e[name=qr_encode_sub] qr_encode 0
execute as @e[name=qr_main,scores={qr_prg=9}] run scoreboard players set @e[name=qr_encode_sub] qr_encode_l 8
execute as @e[name=qr_main,scores={qr_prg=9}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] at @s run scoreboard players operation @e[c=1,r=2,name=qr_encode_sub,scores={qr_encode=0}] qr_encode = @s GF_2
execute as @e[name=qr_encode_sub] at @s run function QR/encode_sub
scoreboard players set @e[name=qr_main,scores={qr_prg=9}] qr_prg 10
#
execute as @e[name=qr_main,scores={qr_prg=11}] run summon minecraft:armor_stand qr_xor ~1~~4
execute as @e[name=qr_main,scores={qr_prg=11}] run scoreboard players operation @e[name=qr_xor] qr_encode_lall = @s GF_1
execute as @e[name=qr_main,scores={qr_prg=11}] run fill ~1~~4 ~64~20~4 minecraft:air
scoreboard players set @e[name=qr_main,scores={qr_prg=11}] qr_prg 12
#
execute as @e[name=qr_main,scores={qr_prg=12}] as @e[name=qr_xor] at @s run function QR/xor
execute as @e[name=qr_main,scores={qr_prg=12}] as @e[name=qr_xor] at @s run function QR/xor
execute as @e[name=qr_main,scores={qr_prg=12}] as @e[name=qr_xor] at @s run function QR/xor
execute as @e[name=qr_main,scores={qr_prg=12}] as @e[name=qr_xor] at @s run function QR/xor
execute as @e[name=qr_main,scores={qr_prg=12}] as @e[name=qr_xor] at @s run function QR/xor
execute as @e[name=qr_main,scores={qr_prg=12}] as @e[name=qr_xor] at @s run function QR/xor
execute as @e[name=qr_main,scores={qr_prg=12}] as @e[name=qr_xor] at @s run function QR/xor
execute as @e[name=qr_main,scores={qr_prg=12}] as @e[name=qr_xor] at @s run function QR/xor
execute as @e[name=qr_main,scores={qr_prg=12}] as @e[name=qr_xor] at @s run function QR/xor
execute as @e[name=qr_main,scores={qr_prg=12}] as @e[name=qr_xor] at @s run function QR/xor
#
execute as @e[name=qr_main,scores={qr_prg=13,qr_code=0}] run structure save qr_1 ~64~20~ ~1~~ 
execute as @e[name=qr_main,scores={qr_prg=13}] run structure save qr_2 ~64~20~4 ~1~~4 
execute as @e[name=qr_main,scores={qr_prg=13,qr_code=0}] run structure load qr_1 ~1~~6 0_degrees none false true
execute as @e[name=qr_main,scores={qr_prg=13}] run structure load qr_2 ~1~~ 0_degrees none false true
scoreboard players set @e[name=qr_main,scores={qr_prg=13}] qr_prg 14
#
execute as @e[name=qr_main,scores={qr_prg=14}] as @e[name=qr_decode,scores={qr_decode_uid=0..}] run scoreboard players operation @s GF_2 = @s qr_xor
execute as @e[name=qr_main,scores={qr_prg=14}] run scoreboard players add @s qr_code 1
execute as @e[name=qr_main,scores={qr_prg=14}] run tellraw @a { "rawtext": [ { "text": "正在计算纠错码: "},{ "score": {"name": "@s", "objective": "qr_code" } },{"text":"/" },{ "score": {"name": "@s", "objective": "qr_xor" } } ] }
execute as @e[name=qr_main,scores={qr_prg=14}] unless score @s qr_code = @s qr_xor run scoreboard players set @s qr_prg 8
execute as @e[name=qr_main,scores={qr_prg=14}] if score @s qr_code = @s qr_xor run tellraw @a { "rawtext": [ { "text": "纠错码计算完成"}]}
execute as @e[name=qr_main,scores={qr_prg=14}] if score @s qr_code = @s qr_xor run scoreboard players set @s qr_prg 15
#
execute as @e[name=qr_main,scores={qr_prg=15}] as @e[name=qr_decode,scores={qr_decode_uid=-1}] at @s if block ~~~ minecraft:white_concrete [] if block ~-1~~ minecraft:white_concrete [] if block ~-2~~ minecraft:white_concrete [] if block ~-3~~ minecraft:white_concrete [] if block ~-4~~ minecraft:white_concrete [] if block ~-5~~ minecraft:white_concrete [] if block ~-6~~ minecraft:white_concrete [] if block ~-7~~ minecraft:white_concrete [] run scoreboard players set @e[name=qr_main,scores={qr_prg=15}] qr_prg 103

execute as @e[name=qr_main,scores={qr_prg=103}] run summon minecraft:armor_stand qr_sup_a ~1~~
execute as @e[name=qr_main,scores={qr_prg=103}] run summon minecraft:armor_stand qr_sup_b ~9~~
execute as @e[name=qr_main,scores={qr_prg=103}] run scoreboard players add @s GF_1 -8
scoreboard players set @e[name=qr_main,scores={qr_prg=103}] qr_prg 104

execute as @e[name=qr_main,scores={qr_prg=104}] run function QR/sup


execute as @e[name=qr_main,scores={qr_prg=15}] run kill @e[name=qr_decode]
execute as @e[name=qr_main,scores={qr_prg=15}] run tp @s ~~0.5~
scoreboard players set @e[name=qr_main,scores={qr_prg=15}] qr_prg 16
#填充
execute as @e[name=qr_main,scores={qr_prg=16}] run kill @e[name=qr_sup]
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 1 run structure load qr_mode_1 ~1~~8
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 2 run structure load qr_mode_2 ~1~~8
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 3 run structure load qr_mode_3 ~1~~8
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 4 run structure load qr_mode_4 ~1~~8
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 5 run structure load qr_mode_5 ~1~~8
execute as @e[name=qr_main,scores={qr_prg=16}] run tellraw @a { "rawtext": [ { "text": "二维码框架已生成\n开始填充"}]}
execute as @e[name=qr_main,scores={qr_prg=16}] run summon minecraft:armor_stand qr_read ~1~~6
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 1 run summon minecraft:armor_stand qr_fill ~1~-0.5~28
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 2 run summon minecraft:armor_stand qr_fill ~1~-0.5~32
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 3 run summon minecraft:armor_stand qr_fill ~1~-0.5~36
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 4 run summon minecraft:armor_stand qr_fill ~1~-0.5~40
execute as @e[name=qr_main,scores={qr_prg=16}] if score mode qr_uid matches 5 run summon minecraft:armor_stand qr_fill ~1~-0.5~44

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
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read] at @s if block ~~~ minecraft:white_concrete [] at @e[name=qr_fill] run setblock ~~~ minecraft:white_concrete []
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read] at @s if block ~~~ minecraft:black_concrete [] at @e[name=qr_fill] run setblock ~~~ minecraft:black_concrete []

execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read] at @s run tp @s ~1~~
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read] at @s run scoreboard players add @s qr_encode 1

execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0,qr_encode=64}] run tp @s ~1~1~6
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0,qr_encode=128}] run tp @s ~1~2~6
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0,qr_encode=192}] run tp @s ~1~3~6
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0,qr_encode=256}] run tp @s ~1~4~6
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0,qr_encode=320}] run tp @s ~1~5~6
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0,qr_encode=384}] run tp @s ~1~6~6
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0,qr_encode=448}] run tp @s ~1~7~6
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0,qr_encode=512}] run tp @s ~1~8~6
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0,qr_encode=576}] run tp @s ~1~9~6
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0,qr_encode=640}] run tp @s ~1~10~6
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=2,qr_encode=64}] run tp @s ~1~1~
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=2,qr_encode=128}] run tp @s ~1~2~
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=2,qr_encode=192}] run tp @s ~1~3~

execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read] if score @s qr_encode = @s qr_encode_lall run scoreboard players add @s qr_code 1
execute if score mode qr_uid matches 1 as @e[name=qr_read,scores={qr_code=2..,qr_encode=56}] run kill @s
execute if score mode qr_uid matches 2 as @e[name=qr_read,scores={qr_code=2..,qr_encode=80}] run kill @s
execute if score mode qr_uid matches 3 as @e[name=qr_read,scores={qr_code=2..,qr_encode=120}] run kill @s
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=1}] run tp @s ~1~~
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=1}] run scoreboard players set @s qr_encode 0
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=1}] run scoreboard players operation @s qr_encode_lall = @s qr_xor
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=1}] run scoreboard players set @s qr_code 2

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
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=8}] at @s run tellraw @a { "rawtext": [ { "text": "填充完毕\n与掩码图案进行异或运算"}]}
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_fill,scores={qr_code=8}] at @s run scoreboard players set @e[name=qr_main,scores={qr_prg=17}] qr_prg 18
execute as @e[name=qr_fill,scores={qr_code=8}] at @s run kill @s
#
execute if score mode qr_uid matches 1..3 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~8 run structure save qr_4 ~28~~28 ~~~ 
execute if score mode qr_uid matches 4..6 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~8 run structure save qr_4 ~40~~40 ~~~ 

execute if score mode qr_uid matches 1..3 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~40 run structure load qr_4 ~~~
execute if score mode qr_uid matches 4..6 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~52 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~72 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~8 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~40 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~72 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~8 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~40 run structure load qr_4 ~~~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~72 run structure load qr_4 ~~~

execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~1~~40 run structure load qr_ym1_0 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~1~~72 run structure load qr_ym1_1 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~33~~8 run structure load qr_ym1_2 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~33~~40 run structure load qr_ym1_3 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~33~~72 run structure load qr_ym1_4 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~65~~8 run structure load qr_ym1_5 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~65~~40 run structure load qr_ym1_6 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 1 positioned ~65~~72 run structure load qr_ym1_7 ~~1~

execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~1~~40 run structure load qr_ym2_0 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~1~~72 run structure load qr_ym2_1 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~33~~8 run structure load qr_ym2_2 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~33~~40 run structure load qr_ym2_3 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~33~~72 run structure load qr_ym2_4 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~65~~8 run structure load qr_ym2_5 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~65~~40 run structure load qr_ym2_6 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 2 positioned ~65~~72 run structure load qr_ym2_7 ~~1~

execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 3 positioned ~1~~40 run structure load qr_ym3_0 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 4 positioned ~1~~52 run structure load qr_ym4_0 ~~1~
execute as @e[name=qr_main,scores={qr_prg=18}] if score mode qr_uid matches 5 positioned ~1~~52 run structure load qr_ym5_0 ~~1~

execute if score mode qr_uid matches 1..3 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~40 run summon minecraft:armor_stand qr_ym ~~-0.5~
execute if score mode qr_uid matches 4..6 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~52 run summon minecraft:armor_stand qr_ym ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~1~~72 run summon minecraft:armor_stand qr_ym ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~8 run summon minecraft:armor_stand qr_ym ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~40 run summon minecraft:armor_stand qr_ym ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~33~~72 run summon minecraft:armor_stand qr_ym ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~8 run summon minecraft:armor_stand qr_ym ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~40 run summon minecraft:armor_stand qr_ym ~~-0.5~
execute if score mode qr_uid matches 1..2 as @e[name=qr_main,scores={qr_prg=18}] positioned ~65~~72 run summon minecraft:armor_stand qr_ym ~~-0.5~

scoreboard players set @e[name=qr_main,scores={qr_prg=18}] qr_prg 19
#
execute if score mode qr_uid matches 1..3 as @e[name=qr_main,scores={qr_prg=19}] run scoreboard players set @e[name=qr_ym] GF_1 29
execute if score mode qr_uid matches 4..6 as @e[name=qr_main,scores={qr_prg=19}] run scoreboard players set @e[name=qr_ym] GF_1 41
execute as @e[name=qr_main,scores={qr_prg=19}] as @e[name=qr_ym] at @s run function QR/ym
execute as @e[name=qr_main,scores={qr_prg=19}] as @e[name=qr_ym] at @s run function QR/ym
execute as @e[name=qr_main,scores={qr_prg=19}] as @e[name=qr_ym] at @s run function QR/ym
execute as @e[name=qr_main,scores={qr_prg=19}] as @e[name=qr_ym] at @s run function QR/ym
execute as @e[name=qr_main,scores={qr_prg=19}] as @e[name=qr_ym] at @s run function QR/ym

#By Baby_2016