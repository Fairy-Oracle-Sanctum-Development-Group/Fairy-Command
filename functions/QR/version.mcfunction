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

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 13 run scoreboard players set @e[name=qr_decode_place] qr_encode 27
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 13 run scoreboard players set @s qr_xor 107
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 13 run scoreboard players set @s GF_1 3424
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 13 run scoreboard players set @s qr_split 4
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 13 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 13,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")
组1块数: 4,码总数: 133,数据码数: 107, 纠错码数: 26\n开始生成生成多项式(26位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 14 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 14 run scoreboard players set @s qr_xor 116
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 14 run scoreboard players set @s GF_1 3688
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 14 run scoreboard players set @s qr_split 4
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 14 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 14,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 3,码总数: 145,数据码数: 115, 纠错码数: 30\n组2块数: 1,码总数: 146,数据码数: 116, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 15 run scoreboard players set @e[name=qr_decode_place] qr_encode 23
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 15 run scoreboard players set @s qr_xor 88
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 15 run scoreboard players set @s GF_1 4184
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 15 run scoreboard players set @s qr_split 6
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 15 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 15,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 5,码总数: 109,数据码数: 87, 纠错码数: 22\n组2块数: 1,码总数: 110,数据码数: 88, 纠错码数: 22\n开始生成生成多项式(22位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 16 run scoreboard players set @e[name=qr_decode_place] qr_encode 25
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 16 run scoreboard players set @s qr_xor 99
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 16 run scoreboard players set @s GF_1 4712
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 16 run scoreboard players set @s qr_split 6
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 16 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 16,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 5,码总数: 122,数据码数: 98, 纠错码数: 24\n组2块数: 1,码总数: 123,数据码数: 99, 纠错码数: 24\n开始生成生成多项式(24位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 17 run scoreboard players set @e[name=qr_decode_place] qr_encode 29
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 17 run scoreboard players set @s qr_xor 108
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 17 run scoreboard players set @s GF_1 5176
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 17 run scoreboard players set @s qr_split 6
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 17 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 17,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 1,码总数: 135,数据码数: 107, 纠错码数: 28\n组2块数: 5,码总数: 136,数据码数: 108, 纠错码数: 28\n开始生成生成多项式(28位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 18 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 18 run scoreboard players set @s qr_xor 121
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 18 run scoreboard players set @s GF_1 5768
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 18 run scoreboard players set @s qr_split 6
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 18 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 18,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 5,码总数: 150,数据码数: 120, 纠错码数: 30\n组2块数: 1,码总数: 151,数据码数: 121, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 19 run scoreboard players set @e[name=qr_decode_place] qr_encode 29
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 19 run scoreboard players set @s qr_xor 114
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 19 run scoreboard players set @s GF_1 6360
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 19 run scoreboard players set @s qr_split 7
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 19 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 19,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 3,码总数: 141,数据码数: 113, 纠错码数: 28\n组2块数: 4,码总数: 142,数据码数: 114, 纠错码数: 28\n开始生成生成多项式(28位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 20 run scoreboard players set @e[name=qr_decode_place] qr_encode 29
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 20 run scoreboard players set @s qr_xor 108
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 20 run scoreboard players set @s GF_1 6888
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 20 run scoreboard players set @s qr_split 8
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 20 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 20,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 3,码总数: 135,数据码数: 107, 纠错码数: 28\n组2块数: 5,码总数: 136,数据码数: 108, 纠错码数: 28\n开始生成生成多项式(28位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 21 run scoreboard players set @e[name=qr_decode_place] qr_encode 29
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 21 run scoreboard players set @s qr_xor 117
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 21 run scoreboard players set @s GF_1 7456
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 21 run scoreboard players set @s qr_split 8
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 21 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 21,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 4,码总数: 144,数据码数: 116, 纠错码数: 28\n组2块数: 4,码总数: 145,数据码数: 117, 纠错码数: 28\n开始生成生成多项式(28位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 22 run scoreboard players set @e[name=qr_decode_place] qr_encode 29
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 22 run scoreboard players set @s qr_xor 112
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 22 run scoreboard players set @s GF_1 8048
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 22 run scoreboard players set @s qr_split 9
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 22 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 22,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 2,码总数: 139,数据码数: 111, 纠错码数: 28\n组2块数: 7,码总数: 140,数据码数: 112, 纠错码数: 28\n开始生成生成多项式(28位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 23 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 23 run scoreboard players set @s qr_xor 122
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 23 run scoreboard players set @s GF_1 8752
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 23 run scoreboard players set @s qr_split 9
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 23 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 23,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 4,码总数: 151,数据码数: 121, 纠错码数: 30\n组2块数: 5,码总数: 152,数据码数: 122, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 24 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 24 run scoreboard players set @s qr_xor 118
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 24 run scoreboard players set @s GF_1 9392
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 24 run scoreboard players set @s qr_split 10
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 24 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 24,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 6,码总数: 147,数据码数: 117, 纠错码数: 30\n组2块数: 4,码总数: 148,数据码数: 118, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 25 run scoreboard players set @e[name=qr_decode_place] qr_encode 27
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 25 run scoreboard players set @s qr_xor 107
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 25 run scoreboard players set @s GF_1 10208
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 25 run scoreboard players set @s qr_split 12
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 25 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 25,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 8,码总数: 132,数据码数: 106, 纠错码数: 26\n组2块数: 4,码总数: 133,数据码数: 107, 纠错码数: 26\n开始生成生成多项式(26位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 26 run scoreboard players set @e[name=qr_decode_place] qr_encode 29
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 26 run scoreboard players set @s qr_xor 115
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 26 run scoreboard players set @s GF_1 10960
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 26 run scoreboard players set @s qr_split 12
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 26 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 26,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 10,码总数: 142,数据码数: 114, 纠错码数: 28\n组2块数: 2,码总数: 143,数据码数: 115, 纠错码数: 28\n开始生成生成多项式(28位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 27 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 27 run scoreboard players set @s qr_xor 123
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 27 run scoreboard players set @s GF_1 11744
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 27 run scoreboard players set @s qr_split 12
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 27 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 27,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 8,码总数: 152,数据码数: 122, 纠错码数: 30\n组2块数: 4,码总数: 153,数据码数: 123, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 28 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 28 run scoreboard players set @s qr_xor 118
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 28 run scoreboard players set @s GF_1 12248
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 28 run scoreboard players set @s qr_split 13
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 28 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 28,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 3,码总数: 147,数据码数: 117, 纠错码数: 30\n组2块数: 10,码总数: 148,数据码数: 118, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 29 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 29 run scoreboard players set @s qr_xor 117
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 29 run scoreboard players set @s GF_1 13048
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 29 run scoreboard players set @s qr_split 14
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 29 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 29,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 7,码总数: 146,数据码数: 116, 纠错码数: 30\n组2块数: 7,码总数: 147,数据码数: 117, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 30 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 30 run scoreboard players set @s qr_xor 116
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 30 run scoreboard players set @s GF_1 13880
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 30 run scoreboard players set @s qr_split 15
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 30 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 30,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 5,码总数: 145,数据码数: 115, 纠错码数: 30\n组2块数: 10,码总数: 146,数据码数: 116, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 31 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 31 run scoreboard players set @s qr_xor 116
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 31 run scoreboard players set @s GF_1 14744
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 31 run scoreboard players set @s qr_split 16
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 31 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 31,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 13,码总数: 145,数据码数: 115, 纠错码数: 30\n组2块数: 3,码总数: 146,数据码数: 116, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 32 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 32 run scoreboard players set @s qr_xor 115
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 32 run scoreboard players set @s GF_1 15640
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 32 run scoreboard players set @s qr_split 17
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 32 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 32,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")
组1块数: 17,码总数: 145,数据码数: 115, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 33 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 33 run scoreboard players set @s qr_xor 116
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 33 run scoreboard players set @s GF_1 16568
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 33 run scoreboard players set @s qr_split 18
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 33 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 33,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 17,码总数: 145,数据码数: 115, 纠错码数: 30\n组2块数: 1,码总数: 146,数据码数: 116, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 34 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 34 run scoreboard players set @s qr_xor 116
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 34 run scoreboard players set @s GF_1 17528
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 34 run scoreboard players set @s qr_split 19
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 34 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 34,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 13,码总数: 145,数据码数: 115, 纠错码数: 30\n组2块数: 6,码总数: 146,数据码数: 116, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 35 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 35 run scoreboard players set @s qr_xor 122
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 35 run scoreboard players set @s GF_1 18448
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 35 run scoreboard players set @s qr_split 19
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 35 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 35,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 12,码总数: 151,数据码数: 121, 纠错码数: 30\n组2块数: 7,码总数: 152,数据码数: 122, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 36 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 36 run scoreboard players set @s qr_xor 122
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 36 run scoreboard players set @s GF_1 19472
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 36 run scoreboard players set @s qr_split 20
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 36 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 36,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 6,码总数: 151,数据码数: 121, 纠错码数: 30\n组2块数: 14,码总数: 152,数据码数: 122, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 37 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 37 run scoreboard players set @s qr_xor 123
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 37 run scoreboard players set @s GF_1 20528
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 37 run scoreboard players set @s qr_split 21
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 37 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 37,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 17,码总数: 152,数据码数: 122, 纠错码数: 30\n组2块数: 4,码总数: 153,数据码数: 123, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 38 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 38 run scoreboard players set @s qr_xor 123
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 38 run scoreboard players set @s GF_1 21616
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 38 run scoreboard players set @s qr_split 22
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 38 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 38,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 4,码总数: 152,数据码数: 122, 纠错码数: 30\n组2块数: 18,码总数: 153,数据码数: 123, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }

execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 39 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 39 run scoreboard players set @s qr_xor 118
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 39 run scoreboard players set @s GF_1 22496
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 39 run scoreboard players set @s qr_split 24
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 39 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 39,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 20,码总数: 147,数据码数: 117, 纠错码数: 30\n组2块数: 4,码总数: 148,数据码数: 118, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }


execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 40 run scoreboard players set @e[name=qr_decode_place] qr_encode 31
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 40 run scoreboard players set @s qr_xor 119
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 40 run scoreboard players set @s GF_1 23648
execute as @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 40 run scoreboard players set @s qr_split 25
execute at @e[name=qr_main,scores={qr_prg=0}] if score mode qr_uid matches 40 run tellraw @a { "rawtext": [ { "text": "开始生成(版本: 40,字符数量: "},{ "score": {"name": "uid", "objective": "qr_uid" } },{"text":")\n组1块数: 19,码总数: 148,数据码数: 118, 纠错码数: 30\n组2块数: 6,码总数: 149,数据码数: 119, 纠错码数: 30\n开始生成生成多项式(30位纠错码)\n开始编码" } ] }
