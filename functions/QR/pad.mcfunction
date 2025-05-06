execute as @e[name=qr_main,scores={qr_prg=7..}] at @s run scoreboard players operation @s qr_return = @s qr_encode_lall
execute as @e[name=qr_main,scores={qr_prg=7..}] at @s run scoreboard players operation @s qr_return %= "64" NUM
execute as @e[name=qr_main,scores={qr_return=0,qr_prg=7..}] as @e[name=qr_main_sub] at @s run tp @s ~~1~
execute as @e[name=qr_main,scores={qr_return=0,qr_prg=7..}] run tp @s @e[name=qr_main_sub]

scoreboard players set @e[name=qr_main,scores={qr_prg=7,qr_encode=0}] qr_code 0
execute as @e[name=qr_main,scores={qr_prg=7,qr_encode=0}] run kill @e[name=qr_main_sub]
execute as @e[name=qr_main,scores={qr_prg=7,qr_encode=0,qr_code=0}] run structure save qr_1 ~64~315~ ~1~~ 
execute as @e[name=qr_main,scores={qr_prg=7,qr_encode=0,qr_code=0}] run structure load qr_1 ~1~~6 0_degrees none false true
#qr_main归位
execute as @e[name=qr_main,scores={qr_prg=7,qr_encode=0}] run tp @s ~~~
execute as @e[name=qr_main,scores={qr_prg=7,qr_encode=0}] if score mode qr_uid matches 6.. run scoreboard players set @s qr_prg 105
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
