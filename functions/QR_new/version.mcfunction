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

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 6 run scoreboard players set @e[name=qr_decode_place] qr_encode 19
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 6 run scoreboard players set @s qr_xor 68
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 6 run scoreboard players set @s GF_1 1088
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 6 run scoreboard players set @s qr_split 2
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 6 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 6,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 2,码总数: 86,数据码数: 68, 纠错码数: 18\n开始生成生成多项式(18位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 7 run scoreboard players set @e[name=qr_decode_place] qr_encode 21
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 7 run scoreboard players set @s qr_xor 78
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 7 run scoreboard players set @s GF_1 1248
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 7 run scoreboard players set @s qr_split 2
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 7 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 7,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 2,码总数: 98,数据码数: 78, 纠错码数: 20\n开始生成生成多项式(20位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 8 run scoreboard players set @e[name=qr_decode_place] qr_encode 25
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 8 run scoreboard players set @s qr_xor 97
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 8 run scoreboard players set @s GF_1 1552
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 8 run scoreboard players set @s qr_split 2
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 8 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 8,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 2,码总数: 121,数据码数: 97, 纠错码数: 24\n开始生成生成多项式(24位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 9 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 9 run scoreboard players set @s qr_xor 116
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 9 run scoreboard players set @s GF_1 1856
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 9 run scoreboard players set @s qr_split 2
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 9 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 9,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 2,码总数: 146,数据码数: 116, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 10 run scoreboard players set @e[name=qr_decode_place] qr_encode 19
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 10 run scoreboard players set @s qr_xor 69
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 10 run scoreboard players set @s GF_1 2192
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 10 run scoreboard players set @s qr_split 4
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 10 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 10,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 2,码总数: 86,数据码数: 68, 纠错码数: 18\n组2块数: 2,码总数: 87,数据码数: 69, 纠错码数: 18\n开始生成生成多项式(18位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 11 run scoreboard players set @e[name=qr_decode_place] qr_encode 21
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 11 run scoreboard players set @s qr_xor 81
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 11 run scoreboard players set @s GF_1 2592
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 11 run scoreboard players set @s qr_split 4
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 11 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 11,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 4,码总数: 101,数据码数: 81, 纠错码数: 20\n开始生成生成多项式(20位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 12 run scoreboard players set @e[name=qr_decode_place] qr_encode 25
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 12 run scoreboard players set @s qr_xor 93
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 12 run scoreboard players set @s GF_1 2960
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 12 run scoreboard players set @s qr_split 4
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 12 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 12,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 2,码总数: 116,数据码数: 92, 纠错码数: 24\n组2块数: 2,码总数: 117,数据码数: 93, 纠错码数: 24\n开始生成生成多项式(24位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 40 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 40 run scoreboard players set @s qr_xor 119
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 40 run scoreboard players set @s GF_1 23648
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 40 run scoreboard players set @s qr_split 25
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 40 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 40,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 19,码总数: 148,数据码数: 118, 纠错码数: 30\n组2块数: 6,码总数: 149,数据码数: 119, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }


