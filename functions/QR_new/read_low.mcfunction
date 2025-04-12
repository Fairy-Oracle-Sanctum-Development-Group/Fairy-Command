execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read] at @s if block ~~~ minecraft:white_concrete [] at @e[name=qr_fill] run setblock ~~~ minecraft:white_concrete []
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read] at @s if block ~~~ minecraft:black_concrete [] at @e[name=qr_fill] run setblock ~~~ minecraft:black_concrete []

execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read] at @s run tp @s ~1~~
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read] at @s run scoreboard players add @s qr_encode 1

execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0}] run scoreboard players operation @s qr_return = @s qr_encode
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0}] run scoreboard players operation @s qr_return %= "64" NUM
execute as @e[name=qr_main,scores={qr_prg=17}] as @e[name=qr_read,scores={qr_code=0,qr_return=0}] at @s run tp @s ~-64~1~
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
